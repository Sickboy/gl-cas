# frozen_string_literal: true

# BigBlueButton open source conferencing system - http://www.bigbluebutton.org/.
#
# Copyright (c) 2018 BigBlueButton Inc. and by respective authors (see below).
#
# This program is free software; you can redistribute it and/or modify it under the
# terms of the GNU Lesser General Public License as published by the Free Software
# Foundation; either version 3.0 of the License, or (at your option) any later
# version.
#
# BigBlueButton is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License along
# with BigBlueButton; if not, see <http://www.gnu.org/licenses/>.

class InfoController < ApplicationController
  require 'bbb_api'
  require 'nokogiri'
  require "redis"
  
 
    # GET /

    def index
      @api = BigBlueButton::BigBlueButtonApi.new("https://vc.umk.pl/bigbluebutton/api", "6f546cda8f01b77cab73cce8793046d2", "0.9", true)
      
      #puts @api.get_meetings

      #puts @api.get_meetings[:meetings][0][:meetingID]

      #puts Rails.cache.stats

      puts session.inspect
    
      # render ("info/info")
      render :template => "info/info"
  end
end