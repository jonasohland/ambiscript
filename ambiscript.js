autowatch = 1;
outlets = 2;

var jsonbuffer = '';
var decoder = {};
var sig_outlets = [];
var sig_inlets = [];
var coeff_obj = [];
var monitor_child = {};
var protectIO = 0;
var this_patcher = {};
var this_parent = {};
var this_patcher_box = {};
var me = {};

init();

function read(filename) {

    cleanup();
    //empty decoder object and json string buffer
    decoder = {};
    jsonbuffer = '';

    //set access flags and typelist
    access = "readwrite";
    typelist = new Array("iLaF", "maxb", "TEXT", "JSON");


    //read file
    f = new File(filename, access, typelist);

    if (f.isopen) {

        c = f.eof;
        for (i = 0; i < c; i++) {
            a = f.readchars(1);

            jsonbuffer = jsonbuffer.concat(a);
        }
        f.close();
    }

    println('done reading File');
    println('creating Decoder...');

    //parse JSON String to object
    decoder = JSON.parse(jsonbuffer);


    //validate decoder coeffs & channels

    var coeffs_valid = 1;

    var ambi_channels = Math.pow((decoder.order + 1), 2);

    var channels_valid = (decoder.spks == decoder.decoder.length);

    for (var i = 0; i < decoder.decoder.length; i++)
        coeffs_valid = coeffs_valid && (decoder.decoder[i].length == ambi_channels);


    //post decoder stats / mismatches

    if (coeffs_valid && channels_valid) {

        println('done creating Decoder');
    }
    else {
        if (!coeffs_valid) {
            println("coefficents mismatch");
        }
        if (!channels_valid) {
            println("speakers mismatch");
        }

    }

    postStats();
    createDecoder();
}

function postStats() {

    println("--------------------------------");
    println("decoder name: " + decoder.name);
    println("decoder type: " + decoder.type);
    println("order: " + decoder.order);
    println("outputs: " + decoder.spks);
    println("format: " + decoder.format);

    if (decoder.maxre) {
        println("with max-rE weighting");
    }
    else {
        println("without max-rE weighting");
    }
    println("--------------------------------");

}


function createDecoder() {

    cleanup();
    resizeIO();
    renameIO();
    setMatrix();

}

function renameIO() {

    fetchObjects();
    for (var i = 0; i < sig_inlets.length; i++) {
        sig_inlets[i].message("comment", "ambichannel" + i);

    }

    for (var i = 0; i < sig_outlets.length; i++) {

        if (typeof decoder.spknames !== 'undefined') {
            sig_outlets[i].message("comment", decoder.spknames[i]);
        }
        else if (typeof decoder.coords !== 'undefined') {
            sig_outlets[i].message("comment", decoder.coords[i][0] + ", " + decoder.coords[i][1]);
        }
        else {
            sig_outlets[i].message("comment", "channel " + i + 1);
        }
    }

    var namecomment = this.patcher.getnamed('decoder_name_comment');
    namecomment.message("set", decoder.name);

    var typecomment = this.patcher.getnamed('type_comment');
    typecomment.message("set", decoder.type);

    var ordercomment = this.patcher.getnamed('order_comment');
    ordercomment.message("set", decoder.order);
}


function setMatrix() {

    fetchObjects();
    var yoffset = Math.floor(1000 / Math.pow((decoder.order + 1), 2));
    var xoffset = 470 / decoder.spks;

    for (var i = 0; i < decoder.decoder.length; i++) {

        for (var z = 0; z < decoder.decoder[i].length; z++) {

            var obj = this.patcher.newdefault(60 + (yoffset * z), 120 + (xoffset * i), '*~', decoder.decoder[i][z]);

            this.patcher.connect(sig_inlets[z], 0, obj, 0);
            this.patcher.connect(obj, 0, sig_outlets[i], 0);

            obj.varname = 'coeff_' + i + '_' + z;

        }
    }

    outlet(0, "clear")

    for(var i = 0; i < decoder.coords.length; i++){
        outlet(0, ['aed', i + 1, decoder.coords[i][0], decoder.coords[i][1], 1.]);
    }
}

function resizeIO() {

    fetchObjects();
    //resizing, removing outlets
    if (sig_outlets.length > decoder.spks && !protectIO) {

        var to_remove = sig_outlets.length - decoder.spks;

        var l = sig_outlets.length - 1;

        for (var i = 0; i < to_remove; i++) 
            this.patcher.remove(sig_outlets[l - i]);

    }
    //resizing, adding outlets
    if (sig_outlets.length < decoder.spks) {

        var to_add = decoder.spks - sig_outlets.length;
        var l = sig_outlets.length;

        for (var i = 0; i < to_add; i++) {

            sig_outlets[i + l] = this.patcher.newdefault(60 + (40 * i), 600, 'outlet');
            sig_outlets[i + l].varname = 'outlet_' + (l + i);

        }
    }
    //resizing, removing inlets
    if (sig_inlets.length > decoder.decoder[0].length && !protectIO) {


        var to_remove = sig_inlets.length - decoder.decoder[0].length;


        var l = sig_inlets.length - 1;



        for (var i = 0; i < to_remove; i++) {


            this.patcher.remove(sig_inlets[l - i]);

        }
    }
    //resizing, adding inlets
    if (sig_inlets.length < decoder.decoder[0].length) {

        var to_add = decoder.decoder[0].length - sig_inlets.length;

        var l = sig_inlets.length;

        for (var i = 0; i < to_add; i++) {

            sig_inlets[i + l] = this.patcher.newdefault(60 + (40 * i), 50, 'inlet');
            sig_inlets[i + l].varname = 'inlet_' + (l + i);

        }
    }

    

    fetchObjects();

    //distribute outlets
    //distribute inlets

    var offset = Math.floor(1000 / decoder.spks);
    for (var i = 0; i < sig_outlets.length; i++) {
        if (i > decoder.spks) {
            sig_outlets[i].message("patching_position", (60 + ((decoder.spks - 1) * offset) + 30 * i), 600);
        }
        else {
            sig_outlets[i].message("patching_position", (60 + offset * i), 600);
        }

    }
    offset = Math.floor(1000 / decoder.decoder[0].length);
    for (var i = 0; i < sig_inlets.length; i++) {
        if (i > decoder.decoder[0].length) {
            sig_inlets[i].message("patching_position", (60 + ((decoder.decoder[0].length - 1) * offset) + 30 * i), 50);
        }
        else {
            sig_inlets[i].message("patching_position", (60 + offset * i), 50);
        }

    }
    if(this_parent.getnamed("ambi_dac_child_133768")!=null){
        println("removing");
        this_parent.remove(this_parent.getnamed("ambi_dac_child_133768"));
        makedac();
    }


}



function cleanup() {

    fetchObjects();

    for (var i = 0; i < coeff_obj.length; i++) {

        for (var z = 0; z < coeff_obj[i].length; z++) {
            this.patcher.remove(coeff_obj[i][z]);
        }

    }

    var namecomment = this.patcher.getnamed('decoder_name_comment');
    namecomment.message("set", "none");

    var typecomment = this.patcher.getnamed('type_comment');
    typecomment.message("set", "none");

    var ordercomment = this.patcher.getnamed('order_comment');
    ordercomment.message("set", "none");


}

//fetches all inlets, outlets and multipliers

function fetchObjects() {

    sig_outlets = [];
    sig_inlets = [];
    coeff_obj = [];
    var i = 0;

    while (this.patcher.getnamed('outlet_' + i) !== null) {
        sig_outlets[i] = this.patcher.getnamed('outlet_' + i);
        i++;
    }

    i = 0;

    while (this.patcher.getnamed('inlet_' + i) !== null) {
        sig_inlets[i] = this.patcher.getnamed('inlet_' + i);
        i++;
    }

    i = 0;
    var z = 0;

    while (this.patcher.getnamed('coeff_' + i + '_' + z) !== null) {

        var temp = [];
        while (this.patcher.getnamed('coeff_' + i + '_' + z) !== null) {


            temp[z] = this.patcher.getnamed('coeff_' + i + '_' + z);
            z++;


        }
        coeff_obj[i] = temp;
        i++;
        z = 0;
    }

    //println("fetched " + sig_outlets.length + " outlets, " + sig_inlets.length + " inlets");

}

function reset() {

    fetchObjects();

    for (var i = 0; i < coeff_obj.length; i++) {



        for (var z = 0; z < coeff_obj[i].length; z++) {
            this.patcher.remove(coeff_obj[i][z]);
        }

        //println(i+z);
    }
    for (var i = 0; i < sig_inlets.length; i++) {
        this.patcher.remove(sig_inlets[i]);
    }

    for (var i = 0; i < sig_outlets.length; i++) {
        this.patcher.remove(sig_outlets[i]);
    }

    protectIO = 0;

    var jsonbuffer = '';
    var decoder = {};

    var namecomment = this.patcher.getnamed('decoder_name_comment');
    namecomment.message("set", "none");

    var typecomment = this.patcher.getnamed('type_comment');
    typecomment.message("set", "none");

    var ordercomment = this.patcher.getnamed('order_comment');
    ordercomment.message("set", "none");

    outlet(0, "clear")

}

function makedac() {

    if (this_parent.getnamed("ambi_dac_child_133768")==null) {

        println(dac_child);
    
        println(isEmpty(dac_child));
        fetchObjects();

        var xy = [this_patcher_box.rect[0], this_patcher_box.rect[1]];
        var dac_args = [];
        for (var i = 0; i < sig_outlets.length; i++) {
            dac_args.push(i + 1);
        }
        var dac_child = this_parent.newdefault(xy[0] + 30, xy[1] + 50, "dac~", dac_args);
        dac_child.varname = "ambi_dac_child_133768";

        for (var i = 0; i < sig_outlets.length; i++) {
            this_parent.connect(this_patcher_box, i + 1, dac_child, i);
           
        }
        
    }

}


function connectEncoder() {

}



function init(){
    me = this.box;
    this_patcher = this.patcher;
    this_parent = this_patcher.parentpatcher;
    this_patcher_box = this_patcher.box;
}


function protectio(yn) {
    protectIO = yn;
}






//append new outlet 
function appendnewOutlet(id, num, offset){
    var new_outlet = {};
    new_outlet = outlet_template;
    new_outlet.patching_rect[0] = new_outlet.box.patching_rect[0] + offset;
    new_outlet.id = "obj-" + id;
    new_outlet.text = "out " + num;

    return new_outlet;
}

var outlet_template = JSON.parse('{"box":{"id":"obj-","maxclass":"newobj","numinlets":1,"numoutlets":0,"outlettype":[""],"patching_rect":[13., 407., 36., 22.],"style":"","text":"in"}}');

var gen_template = JSON.parse('{"patcher":{"fileversion":1,"appversion":{"major":7,"minor":3,"revision":5,"architecture":"x86","modernui":1},"rect":[84.0,129.0,600.0,450.0],"editing_bgcolor":[0.9,0.9,0.9,1.0],"bglocked":0,"openinpresentation":0,"default_fontsize":12.0,"default_fontface":0,"default_fontname":"Arial","gridonopen":1,"gridsize":[15.0,15.0],"gridsnaponopen":1,"objectsnaponopen":1,"statusbarvisible":2,"toolbarvisible":1,"lefttoolbarpinned":0,"toptoolbarpinned":0,"righttoolbarpinned":0,"bottomtoolbarpinned":0,"toolbars_unpinned_last_save":0,"tallnewobj":0,"boxanimatetime":200,"enablehscroll":1,"enablevscroll":1,"devicewidth":0.0,"description":"","digest":"","tags":"","style":"","subpatcher_template":"","boxes":[{"box":{"code":"","fontface":0,"fontname":"Arial","fontsize":12.0,"id":"obj-5","maxclass":"codebox","numinlets":1,"numoutlets":1,"outlettype":[""],"patching_rect":[13.0,122.0,579.0,198.0],"style":""}}],"lines":[]}}');


//horizontal 543



//-------helpers

function listMethods(object){
	var list = []
	list = Object.getOwnPropertyNames(object)
	    		.filter(function(property) {
	       			return typeof object[property] == 'function';
	    		}
	    		);
	post()
	post("# METHODS #")
	for(var i = 0 ; i < list.length ; i++){
		post()
		post(list[i]+"()")
	}	
	post()
	post("# END #")		
}

function isEmpty(obj) {
    for(var key in obj) {
        if(obj.hasOwnProperty(key))
            return false;
    }
    return true;
}

function println(txt) {
    //post('multidec: ' + txt + '\n');
    outlet(1, txt);
}
