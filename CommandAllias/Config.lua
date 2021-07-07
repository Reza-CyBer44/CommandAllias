Config = {}
Config.Commands = {

    ['FirstCommand'] = {
        helptext = 'Your First Command With Allias.',
        Parameters = {
            { name="paramName1", help="param description 1" },
            { name="paramName2", help="param description 2" }
        },
        Allias = {
            'FirstAllias',
            'SecondAllias'
        }

    },


}