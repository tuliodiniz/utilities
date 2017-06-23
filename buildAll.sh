#!/bin/bash

echo ""
echo "Build of all projects of Vulcano Team."
echo ""
echo ""
echo "Build of hot-utils:"
mvn -T 4C clean install -f ./hot-utils/ -DskipTests

echo ""
echo "____________________________________________________________________________"
echo "Build of hot-liquibase"
mvn -T 4C clean install -f ./hot-liquibase/ -DskipTests

echo ""
echo "____________________________________________________________________________"
echo "Build of hot-test-util"
mvn -T 4C clean install -f ./hot-test-util/ -DskipTests

echo "____________________________________________________________________________"
echo "Build of hot-marketplace-vo:"
mvn -T 4C clean install -f ./hot-marketplace-vo/hot-marketplace-vo/ -DskipTests &
mvn -T 4C clean install -f ./hot-marketplace-vo/hot-integration-vo/ -DskipTests &

echo ""
echo "____________________________________________________________________________"
echo "Build of entities"
mvn -T 4C clean install -f ./hot-marketplace-entity/hot-email-tracker-entity  -DskipTests
mvn -T 4C clean install -f ./hot-marketplace-entity/hot-marketplace-entity/ -DskipTests
mvn -T 4C clean install -f ./hot-marketplace-entity/hot-message-entity/ -DskipTests
mvn -T 4C clean install -f ./hot-marketplace-entity/hot-payment-tracker-entity/ -DskipTests
mvn -T 4C clean install -f ./hot-marketplace-entity/hot-marketplace-commons-entity/ -DskipTests
mvn -T 4C clean install -f ./hot-marketplace-entity/hot-marketplace-hst-entity/ -DskipTests

echo ""
echo "____________________________________________________________________________"
echo "Build of hot-email-builder"
mvn -T 4C clean install -f ./hot-mail-builder -DskipTests

echo ""
echo "____________________________________________________________________________"
echo "Build of hot-integration:"
mvn -T 4C clean install -f ./hot-integration/hot-integration/ -DskipTests
mvn -T 4C clean install -f ./hot-integration/hot-integration-backoffice/ -DskipTests
mvn -T 4C clean install -f ./hot-integration/hot-integration-club/ -DskipTests
mvn -T 4C clean install -f ./hot-integration/hot-integration-club-queue/ -DskipTests
mvn -T 4C clean install -f ./hot-integration/hot-integration-hotbank/ -DskipTests
mvn -T 4C clean install -f ./hot-integration/hot-integration-hotpay/ -DskipTests
mvn -T 4C clean install -f ./hot-integration/hot-integration-job/ -DskipTests
mvn -T 4C clean install -f ./hot-integration/hot-integration-klick-pages/ -DskiptTests
mvn -T 4C clean install -f ./hot-integration/hot-integration-marketplace/ -DskipTests
mvn -T 4C clean install -f ./hot-integration/hot-integration-marketplace-queue/ -DskipTests
mvn -T 4C clean install -f ./hot-integration/hot-integration-notification/ -DskipTests
mvn -T 4C clean install -f ./hot-integration/hot-integration-security/ -DskipTests
mvn -T 4C clean install -f ./hot-integration/hot-integration-redshift/ -DskipTests
mvn -T 4C clean install -f ./hot-integration/hot-integration-club-sec/ -DskipTests

echo ""
echo "____________________________________________________________________________"
echo "Build of hot-swagger-util:"
mvn -T 4C clean install -f ./hot-swagger/hot-swagger-util/ -DskipTests

echo ""
echo "____________________________________________________________________________"
echo "Build of hot-marketplace:"
mvn -T 4C clean install -f ./hot-marketplace/ -DskipTests &

echo ""
echo "____________________________________________________________________________"
echo "Build of hot-oathsecurity:"
mvn -T 4C clean install -f ./hot-oauthsecurity/ -DskipTests &

echo ""
echo "____________________________________________________________________________"
echo "Build of hot-notifications:"
mvn -T 4C clean install -f ./hot-notifications/ -DskipTests &

echo ""
echo "____________________________________________________________________________"
echo "Build of hot-reports:"
mvn -T 4C clean install -f ./hot-reports/ -DskipTests &

echo ""
echo "____________________________________________________________________________"
echo "Build of hot-swagger-web"
mvn -T 4C clean install -f ./hot-swagger/hot-swagger-web/ -DskipTests &



