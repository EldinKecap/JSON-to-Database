let data = require('./JUST DO IT.json')
// console.log(data);
let {contributors} = data;
// console.log(contributors);
let columnNamesContributors = ['id', 'honorific', 'firstName', 'lastName', 'postNominal', 'email',
 'company', 'position', 'phone', 'twitter', 'facebook', 'linkedin', 'instagram', 'youtube',
  'bio', 'bio_HTML', 'headshotURL', 'headshot2xURL', 'notes', 'lastModified'];
let {labels} = data;
let columnNamesLabels = ['id', 'name', 'description', 'description_HTML', 'lastModified'];
let {locations} = data;
let columnNamesLocations = ['id', 'name', 'description', 'description_HTML', 'lastModified'];
let {resources} = data;
let columnNamesResources = ['id', 'name', 'description', 'description_HTML', 'lastModified'];
let {sessions} = data;
let columnNamesSessions = ['id', 'name', 'code','description', 'description_HTML', 'track', 'color', 'startDate', 'endDate', 'location', 'notes', 'lastModified'];
let {tracks} = data;
let columnNamesTracks = ['id', 'name', 'description', 'description_HTML', 'color','lastModified'];

// console.log();

function convertDate(date) {
    date = date.replace(/[T]/,' ');
    date = date.replace(/[Z]/,'');
    return date;
}

// console.log(convertDate('2021-09-21T08:00:00.000Z'));

function getMainTableData(data,columnNames) {
    let values = '';
    for (let i = 0; i < data.length; i++) {
        
        for (const key in data[i]) {
            if (columnNames.includes(key)) {
                // console.log(key);
                if (key == Object.keys(data[i])[0]) {
                    values += '(';
                }
                if (key != 'lastModified' && !key.includes('Date')) {
                    if (data[i][key] == null) {
                        values += data[i][key] + ',';
                    }else{
                        values += '"' + data[i][key] + '"' + ',';
                    }
                }else{
                    values += '"' + convertDate(data[i][key]) + '"' + ',';
                }
            //    console.log(Object.keys(data[i])[Object.keys(data[i]).length-2]);
               if(key == Object.keys(data[i])[Object.keys(data[i]).length-2]){
                values = values.replace(/,$/,'),');
                // console.log(values);
                // console.log(/,$/.test(values));
               }
            }
        }
       
    }
    values = values.replace(/,$/,'');
    return values;
}

//Retrieving main table data
let contributorsInsert = getMainTableData(contributors,columnNamesContributors);
let labelsInsert = getMainTableData(labels,columnNamesLabels);
let resourcesInsert = getMainTableData(resources,columnNamesResources);
let locationsInsert = getMainTableData(locations,columnNamesLocations);
let sessionsInsert = getMainTableData(sessions,columnNamesSessions);
let tracksInsert = getMainTableData(tracks,columnNamesTracks);

// console.log(sessionsInsert.includes('f9d7344f-85ba-4339-a5ed-1e2a8cde01b1'));

let mysql = require('mysql');
let conn = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'root',
    database:'seminar',
    // port: 3307 //change this if you need to default is 3306
});

function insertData(tableName, columns ,dataToInsert) {
    conn.connect(function(err){
        if(err)throw err;
        console.log('connected');
        let sql = 'INSERT INTO ' + tableName + columns + ' VALUES '+ dataToInsert;
        conn.query(sql,function(err,res){
            if(err) throw err;
            console.log('records inserted:' + res.affectedRows);
        })
    })
}
//Have to insert one by one
// insertData('contributors','',contributorsInsert)
// insertData('labels','',labelsInsert)
// insertData('resources','',resourcesInsert);
// insertData('locations','',locationsInsert);
// insertData('tracks','',tracksInsert);
// insertData('sessions','',sessionsInsert);

function getJoinedTablesData(data,mainDataName,subDataName){
    let returnData =[];
    for (const key in data) {
        for (let i = 0; i < data[key].length; i++) {
            if (key == mainDataName) {
                for (let j = 0; j < data[key][i][subDataName].length; j++) {
                if (Object.keys(data[key][i][subDataName].includes('tracks')) && mainDataName == 'locations' && subDataName != 'availability') {
                    console.log('sdfasd');
                    returnData.push(`('${data[key][i]['id']}','${data[key][i][subDataName][j]}')`);
                }
                if (Object.keys(data[key][i][subDataName].includes('sessions')) && mainDataName == 'resources') {
                    // console.log('sdfasd');
                    returnData.push(`('${data[key][i]['id']}','${data[key][i][subDataName][j]}')`);
                }
                // console.log('sfsf');
                        if (Object.keys(data[key][i][subDataName][j]).includes('startDate')) {
                        returnData.push(`('${data[key][i]['id']}','${convertDate(data[key][i][subDataName][j]['startDate'])}','${
                           convertDate(data[key][i][subDataName][j]['endDate'])}')`);
                    }else if(Object.keys(data[key][i][subDataName][j]).includes('session')){
                        returnData.push(`('${data[key][i]['id']}','${data[key][i][subDataName][j]['session']}',${
                            data[key][i][subDataName][j]['role']})`);
                    }
                }
            }
        }
    }
    return returnData;
}

//RETRIEVING DATA
// let contributorsAvailabilityInsert = getJoinedTablesData(data,'contributors','availability');
// let contributorsLabelsInsert = getJoinedTablesData(data,'contributors','labels');
// let contributorsSessionsInsert = getJoinedTablesData(data,'contributors','sessionJoins');
// let locationsAvailability = getJoinedTablesData(data,'locations','availability');
// let locationsLabels = getJoinedTablesData(data,'locations','labels');
// let locationsTracks = getJoinedTablesData(data,'locations','tracks');
// let resourcesLabels = getJoinedTablesData(data,'resources','labels');
// let resourcesSessions = getJoinedTablesData(data,'resources','sessions');
// let sessionslabels = getJoinedTablesData(data,'sessions','labels');
// let tracksLabels = getJoinedTablesData(data,'tracks','labels');




//CHECKING DATA
// console.log(contributorsSessionsInsert);
// console.log(contributorsLabelsInsert);// empty
// console.log(locationsAvailability);
// console.log(locationsLabels);// empty
// console.log(locationsTracks);
// console.log(resourcesLabels);// empty
// console.log(resourcesSessions);
// console.log(sessionslabels);// empty
// console.log(tracksLabels);// empty


//INSERTING DATA has to be done one by one
// insertData('contributorsAvailability','(contributorsId,startDate,endDate)',contributorsAvailabilityInsert);
// insertData('contributorsSessions','(contributorsId,sessionsId,role)',contributorsSessionsInsert);
// insertData('locationsAvailability','(locationsId,startDate,endDate)',locationsAvailability);
// insertData('locationsTracks','(locationsId,tracksId)',locationsTracks);
// insertData('resourcesSessions','(resourcesId,sessionsId)',resourcesSessions);