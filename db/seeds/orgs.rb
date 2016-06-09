print '    |-- Creating all nested data'
2.times {
   @org = Structures::OrgDatum.create(name: Faker::Company.name, address: Faker::Address.street_address)

  3.times {
    @sls = Structures::SlsDatum.create(name: Faker::Company.name, org_datum_id:@org.id)

    3.times {
      @sls.ths.create(name: Faker::Name.first_name )
    }
  }
  @org.sls_datum << @sls
}

print "DONE\n"
