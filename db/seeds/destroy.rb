print '|-- Destroying Everything In DB'
Structures::Th.destroy_all
Structures::SlsDatum.destroy_all
Structures::OrgDatum.destroy_all
print "DONE\n"
