# Свиридова Элина, 11-я когорта — Финальный проект. Инженер по тестированию плюс


import sender_stand_request


def test_create_order():
    response_order = sender_stand_request.create_new_order()
    track = response_order.json()["track"]
    response_get_order = sender_stand_request.get_track_order(track)
    assert response_get_order.status_code == 200
