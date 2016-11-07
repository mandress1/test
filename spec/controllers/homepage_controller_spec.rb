require 'spec_helper'
require 'rails_helper'

describe HomepagesController do
  describe 'navigating TPmDb homepaage' do
    
    describe 'go to login' do
      it 'should redirect to the login page on link click' do
        expect(:get => '/login').to route_to(:controller => 'sessions', :action => 'new')
      end
    end
    
    describe 'go to the homepage' do
      it 'should redirect to the homepage on top logo click' do
        expect(:post => '/logo').to route_to(:controller => 'homepages', :action => 'index')
      end
    end
    
    describe 'searching TPmDb' do
      describe 'valid search' do
        it 'should select  the search results template for rendering' do
          #todo
        end
        
        it 'should make the results available to the template' do
          #todo
        end
      end
      
      describe 'invalid search' do
        it 'should return to homepage and flash invalid search' do
          #todo
        end
      end
      
      describe 'empty return' do
        it 'should return to all pokemon page and say no results found' do
          #todo
        end
      end
    end
    
    describe 'go to all pokemon page' do
      #todo
    end
    
    describe 'go to pokemon of the day' do
      #todo
    end
    
  end
end


