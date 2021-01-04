Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file }


module Pages
    def homepage
        @homepage ||= HomepagePage.new
    end

    def tryoutpage
        @tryoutpage ||= TryoutPage.new
    end

    def tryoutstepspage
        @tryoutstepspage ||= TryoutStepsPage.new
    end

    def suggestedlistpage
        @suggestedlistpage ||= SuggestedListPage.new
    end

    def sectorpage
        @sectorpage ||= SectorPage.new
    end
    
    def sectoralimentospage
        @sectoralimentospage ||= SectorAlimentosPage.new
    end

    def sectorbebidaspage
        @sectorbebidaspage ||= SectorBebidasPage.new
    end

    def sectorcasaelimpezapage
        @sectorcasaelimpezapage ||= SectorCasaELimpezaPage.new
    end

    def sectorcuidadoscomaroupapage
        @sectorcuidadoscomaroupapage ||= SectorCuidadosComARoupaPage.new
    end

    def sectordescartaveiseutilitariospage
        @sectordescartaveiseutilitariospage ||= SectorDescartaveisEUtilitariosPage.new
    end

    def sectorescritoriopage
        @sectorescritoriopage ||= SectorEscritorioPage.new
    end

    def sectorhigieneebelezapage
        @sectorhigieneebelezapage ||= SectorHigieneEBelezaPage.new
    end

    def sectorinfantilpage
        @sectorinfantilpage ||= SectorInfantilPage.new
    end

    def sectorpetshoppage
        @sectorpetshoppage ||= SectorPetShopPage.new
    end

    def sectorprecoscomdescontopage
        @sectorprecoscomdescontopage ||= SectorPrecosComDescontoPage.new
    end

    def sectorprodutosalelopage
        @sectorprodutosalelopage ||= SectorProdutosAleloPage.new
    end

    def signupschedulepage
        @signupschedulepage ||= SignUpSchedulePage.new
    end

    def signupindividualpage
        @signupindividualpage ||= SignUpIndividualPage.new
    end

    def signuplegalentitypage
        @signuplegalentitypage || SignUpLegalEntityPage.new
    end

    def signupfinancialcreditcardpage
        @signupfinancialcreditcardpage || SignUpFinancialCreditCardPage.new
    end

    def signupfinancialalelocardpage
        @signupfinancialalelocardpage || SignUpFinancialAleloCardPage.new
    end

    def signupscheduleconfigurationpage
        @signupscheduleconfigurationpage || SignUpScheduleConfigurationPage.new
    end

    def signinloginpage
        @signinloginpage || SignInLoginPage.new 
    end

    def userdashboardpage
        @userdashboardpage || UserDashboardPage.new
    end

    def userpersonaldatapage
        @userpersonaldatapage || UserPersonalDataPage.new
    end

    def userdeliverydatapage
        @userdeliverydatapage || UserDeliveryDataPage.new
    end

    def userfinancialdatapage
        @userfinancialdatapage || UserFinancialDataPage.new
    end
end