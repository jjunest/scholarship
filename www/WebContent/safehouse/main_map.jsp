    <!DOCTYPE html>

        <html>
        <head>
        <meta charset ="utf-8">


        </head>
        <body>

        <div id="map" style="width:100%;height:350px;"></div>

        <!-- ����Ÿ�� ��Ʈ�� div �Դϴ� -->
        <div class="custom_typecontrol radius_border">
        <span id="btnRoadmap" class="selected_btn" onclick="setMapType('roadmap')">����</span>
        <span id="btnSkyview" class="btn" onclick="setMapType('skyview')">��ī�̺�</span>
        </div>


        <script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=55f963883949bc753ea770926b224e1a"></script>


        <script>



        var mapContainer = document.getElementById('map'), // ������ ǥ���� div
        mapOption = {
        center: new daum.maps.LatLng(36.0114745, 129.3659577), // ������ �߽���ǥ
        level: 3 // ������ Ȯ�� ����
        };

        var map = new daum.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

        // ��Ŀ�� ǥ�õ� ��ġ�Դϴ�
        var markerPosition  = new daum.maps.LatLng(36.0114745,129.3659577);

        // ��Ŀ�� �����մϴ�
        var marker = new daum.maps.Marker({
        position: markerPosition
        });

        // ��Ŀ�� ���� ���� ǥ�õǵ��� �����մϴ�
        marker.setMap(map);

        // �Ʒ� �ڵ�� ���� ���� ��Ŀ�� �����ϴ� �ڵ��Դϴ�
        // marker.setMap(null);

        // �Ϲ� ������ ��ī�̺�� ���� Ÿ���� ��ȯ�� �� �ִ� ����Ÿ�� ��Ʈ���� �����մϴ�
        var mapTypeControl = new daum.maps.MapTypeControl();

        // ������ ��Ʈ���� �߰��ؾ� �������� ǥ�õ˴ϴ�
        // daum.maps.ControlPosition�� ��Ʈ���� ǥ�õ� ��ġ�� �����ϴµ� TOPRIGHT�� ������ ���� �ǹ��մϴ�
        map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);

        // ���� Ȯ�� ��Ҹ� ������ �� �ִ�  �� ��Ʈ���� �����մϴ�
        var zoomControl = new daum.maps.ZoomControl();
        map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);


        </script>

        </body>
        </html>