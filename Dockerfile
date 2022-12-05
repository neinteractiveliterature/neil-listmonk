ARG LISTMONK_TAG
FROM listmonk/listmonk:$LISTMONK_TAG

CMD LISTMONK_app__address=0.0.0.0:$PORT ./listmonk
