.class Lcom/android/mms/util/TranslateEngine$TranslateTask;
.super Landroid/os/AsyncTask;
.source "TranslateEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/TranslateEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranslateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/mms/util/TranslateEngine;


# direct methods
.method public constructor <init>(Lcom/android/mms/util/TranslateEngine;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/util/TranslateEngine$TranslateTask;->this$0:Lcom/android/mms/util/TranslateEngine;

    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/util/TranslateEngine$TranslateTask;->mHandler:Landroid/os/Handler;

    const-string v4, "https://www.googleapis.com/language/translate/v2"

    const-string v3, "?key=AIzaSyALx0ahRJy7K1yXQcaN13v9C5_IU7RZGL0"

    const-string v9, ""

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v15

    if-gtz v15, :cond_0

    const-string v15, "zh"

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "&source="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "&target="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p5

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "&q="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v14, Ljava/lang/StringBuffer;

    const-string v15, "https://www.googleapis.com/language/translate/v2"

    invoke-direct {v14, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v15, "?key=AIzaSyALx0ahRJy7K1yXQcaN13v9C5_IU7RZGL0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x7d0

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v15, 0x7d0

    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/util/TranslateEngine$TranslateTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v15}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    :try_start_0
    new-instance v15, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v15, v12}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/android/mms/util/TranslateEngine;->mGetRequest:Lorg/apache/http/client/methods/HttpGet;

    new-instance v15, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v15}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/android/mms/util/TranslateEngine;->mClient:Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v7

    const-string v15, "transResult"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "error_type"

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    invoke-virtual {v8, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/util/TranslateEngine$TranslateTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v15, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private tryAcquireHttpResponseString()Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v2, "Mms/TranslateEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Executing Request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/util/TranslateEngine$TranslateTask;->this$0:Lcom/android/mms/util/TranslateEngine;

    iget-object v4, v4, Lcom/android/mms/util/TranslateEngine;->mGetRequest:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    iget-object v2, p0, Lcom/android/mms/util/TranslateEngine$TranslateTask;->this$0:Lcom/android/mms/util/TranslateEngine;

    iget-object v2, v2, Lcom/android/mms/util/TranslateEngine;->mClient:Lorg/apache/http/client/HttpClient;

    iget-object v3, p0, Lcom/android/mms/util/TranslateEngine$TranslateTask;->this$0:Lcom/android/mms/util/TranslateEngine;

    iget-object v3, v3, Lcom/android/mms/util/TranslateEngine;->mGetRequest:Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {v2, v3, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "Mms/TranslateEngine"

    const-string v3, "Error acquiring http response string"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 13

    const/4 v12, 0x0

    const/4 v11, -0x2

    const/4 v10, 0x0

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v9, p0, Lcom/android/mms/util/TranslateEngine$TranslateTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/mms/util/TranslateEngine$TranslateTask;->tryAcquireHttpResponseString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v9, "transResult"

    invoke-virtual {v0, v9, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "error_type"

    invoke-virtual {v0, v9, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v9, p0, Lcom/android/mms/util/TranslateEngine$TranslateTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    :goto_0
    return-object v9

    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "data"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v9, "translations"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "translatedText"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/lang/StringEscapeUtils;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "Mms/TranslateEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "success to TRANSLATE - translated String = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "transResult"

    invoke-virtual {v0, v9, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "error_type"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v9, p0, Lcom/android/mms/util/TranslateEngine$TranslateTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string v9, "transResult"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "error_type"

    const/4 v10, -0x2

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v9, p0, Lcom/android/mms/util/TranslateEngine$TranslateTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :catchall_0
    move-exception v9

    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v10, p0, Lcom/android/mms/util/TranslateEngine$TranslateTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v9
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/mms/util/TranslateEngine$TranslateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public start()V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/mms/util/TranslateEngine$TranslateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
