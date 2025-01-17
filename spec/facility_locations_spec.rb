require 'spec_helper'

RSpec.describe FacilityLocations do
    it 'returns facility objects' do
        dmv = FacilityLocations.new
        co_dmv_office_locations = DmvDataService.new.co_dmv_office_locations
        ny_dmv_office_locations = DmvDataService.new.ny_dmv_office_locations
        mo_dmv_office_locations = DmvDataService.new.mo_dmv_office_locations
        
        expect(dmv.co_dmv_offices(co_dmv_office_locations)).to all(be_an_instance_of(Facility))
        expect(dmv.ny_dmv_offices(ny_dmv_office_locations)).to all(be_an_instance_of(Facility))
        expect(dmv.mo_dmv_offices(mo_dmv_office_locations)).to all(be_an_instance_of(Facility))
    end
end