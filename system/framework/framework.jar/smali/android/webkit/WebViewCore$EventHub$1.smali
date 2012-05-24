.class Landroid/webkit/WebViewCore$EventHub$1;
.super Landroid/os/Handler;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore$EventHub;->transferMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebViewCore$EventHub;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore$EventHub;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 87

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$600(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    invoke-static {v2}, Landroid/webkit/WebViewCore$EventHub;->access$800(Landroid/webkit/WebViewCore$EventHub;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x6e

    if-eq v2, v4, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x6d

    if-eq v2, v4, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_0

    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)V

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$900(Landroid/webkit/WebViewCore;)V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)V

    goto :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    monitor-enter v4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->destroy()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Landroid/webkit/WebViewCore;->access$1102(Landroid/webkit/WebViewCore;Landroid/webkit/BrowserFrame;)Landroid/webkit/BrowserFrame;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1200(Landroid/webkit/WebViewCore;)Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->onDestroyed()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Landroid/webkit/WebViewCore;->access$702(Landroid/webkit/WebViewCore;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Landroid/webkit/WebViewCore;->access$602(Landroid/webkit/WebViewCore;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$600(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v65, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move/from16 v0, v65

    invoke-static {v2, v4, v0}, Landroid/webkit/WebViewCore;->access$1400(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v59

    if-eqz v59, :cond_0

    invoke-virtual/range {v59 .. v59}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$600(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x7d

    const/4 v6, 0x0

    move/from16 v0, v65

    move-object/from16 v1, v59

    invoke-static {v2, v4, v0, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_3

    const/16 v86, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move/from16 v0, v86

    invoke-static {v2, v0, v4}, Landroid/webkit/WebViewCore;->access$1600(Landroid/webkit/WebViewCore;FI)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v86

    goto :goto_1

    :sswitch_7
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->waitForCookieOperationsToComplete()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v66, v0

    check-cast v66, Landroid/webkit/WebViewCore$GetUrlData;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v66

    iget-object v4, v0, Landroid/webkit/WebViewCore$GetUrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v66

    iget-object v6, v0, Landroid/webkit/WebViewCore$GetUrlData;->mExtraHeaders:Ljava/util/Map;

    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$1700(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    :sswitch_8
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->waitForCookieOperationsToComplete()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v66, v0

    check-cast v66, Landroid/webkit/WebViewCore$PostUrlData;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v66

    iget-object v4, v0, Landroid/webkit/WebViewCore$PostUrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v66

    iget-object v6, v0, Landroid/webkit/WebViewCore$PostUrlData;->mPostData:[B

    invoke-virtual {v2, v4, v6}, Landroid/webkit/BrowserFrame;->postUrl(Ljava/lang/String;[B)V

    goto/16 :goto_0

    :sswitch_9
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->waitForCookieOperationsToComplete()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, Landroid/webkit/WebViewCore$BaseUrlData;

    move-object/from16 v0, v60

    iget-object v3, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mBaseUrl:Ljava/lang/String;

    if-eqz v3, :cond_4

    const/16 v2, 0x3a

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v53

    if-lez v53, :cond_4

    const/4 v2, 0x0

    move/from16 v0, v53

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v78

    const-string v2, "http"

    move-object/from16 v0, v78

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ftp"

    move-object/from16 v0, v78

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "about"

    move-object/from16 v0, v78

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "javascript"

    move-object/from16 v0, v78

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v78

    invoke-static {v2, v0}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v60

    iget-object v4, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mData:Ljava/lang/String;

    move-object/from16 v0, v60

    iget-object v5, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, v60

    iget-object v6, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mEncoding:Ljava/lang/String;

    move-object/from16 v0, v60

    iget-object v7, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mHistoryUrl:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/BrowserFrame;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1900(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->committed()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->stopLoading()V

    goto/16 :goto_0

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/webkit/BrowserFrame;->reload(Z)V

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    invoke-static {v4, v2, v6}, Landroid/webkit/WebViewCore;->access$2000(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;Z)V

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    invoke-static {v4, v2, v6}, Landroid/webkit/WebViewCore;->access$2000(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;Z)V

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    const/4 v9, 0x1

    invoke-static {v2, v4, v6, v9}, Landroid/webkit/WebViewCore;->access$2100(Landroid/webkit/WebViewCore;IIZ)V

    goto/16 :goto_0

    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    const/4 v9, 0x0

    invoke-static {v2, v4, v6, v9}, Landroid/webkit/WebViewCore;->access$2100(Landroid/webkit/WebViewCore;IIZ)V

    goto/16 :goto_0

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebView$ViewSizeData;

    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$2200(Landroid/webkit/WebViewCore;Landroid/webkit/WebView$ViewSizeData;)V

    goto/16 :goto_0

    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v68, v0

    check-cast v68, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v9, 0x1

    if-ne v2, v9, :cond_6

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, v68

    iget v9, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v68

    iget v10, v0, Landroid/graphics/Point;->y:I

    invoke-static {v4, v6, v2, v9, v10}, Landroid/webkit/WebViewCore;->access$2300(Landroid/webkit/WebViewCore;IZII)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    :sswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v85, v0

    check-cast v85, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v85

    invoke-static {v2, v0}, Landroid/webkit/WebViewCore;->access$2400(Landroid/webkit/WebViewCore;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v69, v0

    check-cast v69, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v69

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v69

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v69 .. v69}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual/range {v69 .. v69}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-static {v2, v4, v6, v9, v10}, Landroid/webkit/WebViewCore;->access$2500(Landroid/webkit/WebViewCore;IIII)V

    goto/16 :goto_0

    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->committed()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->loadType()I

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/webkit/BrowserFrame;->reload(Z)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Landroid/webkit/BrowserFrame;->goBackOrForward(I)V

    goto/16 :goto_0

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->stopLoading()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$2600(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    :sswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    invoke-static {v4}, Landroid/webkit/WebViewCore$EventHub;->access$2800(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v4

    invoke-static {v2, v4}, Landroid/webkit/WebViewCore$EventHub;->access$2702(Landroid/webkit/WebViewCore$EventHub;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    invoke-static {v2}, Landroid/webkit/WebViewCore$EventHub;->access$2800(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v2

    const/16 v4, 0xa

    invoke-static {v2, v4}, Landroid/os/Process;->setThreadPriority(II)V

    invoke-static {}, Landroid/webkit/WebViewCore;->pauseTimers()V

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    const/16 v4, 0x6f

    invoke-virtual {v2, v4}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$2900(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    :sswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    invoke-static {v2}, Landroid/webkit/WebViewCore$EventHub;->access$2800(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    invoke-static {v4}, Landroid/webkit/WebViewCore$EventHub;->access$2700(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v4

    invoke-static {v2, v4}, Landroid/os/Process;->setThreadPriority(II)V

    invoke-static {}, Landroid/webkit/WebViewCore;->resumeTimers()V

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    const/16 v4, 0x70

    invoke-virtual {v2, v4}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :sswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$3000(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    :sswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$3100(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$3200(Landroid/webkit/WebViewCore;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$3300(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    :sswitch_1b
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DELKEY_SIML_FOR_COUNT "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$3400(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    :sswitch_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/webkit/WebView$ResultTransport;

    invoke-virtual/range {v29 .. v29}, Landroid/webkit/WebView$ResultTransport;->getParams()[Ljava/lang/Object;

    move-result-object v67

    const/4 v2, 0x0

    aget-object v2, v67, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v2, 0x1

    aget-object v2, v67, v2

    check-cast v2, Landroid/webkit/WebView$CursorDirection;

    sget-object v4, Landroid/webkit/WebView$CursorDirection;->BACKWARD:Landroid/webkit/WebView$CursorDirection;

    if-ne v2, v4, :cond_9

    const/16 v55, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move/from16 v0, v55

    invoke-static {v2, v14, v0}, Landroid/webkit/WebViewCore;->access$3500(Landroid/webkit/WebViewCore;IZ)Ljava/lang/String;

    move-result-object v81

    monitor-enter v29

    :try_start_1
    move-object/from16 v0, v29

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->notify()V

    monitor-exit v29

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    :cond_9
    const/16 v55, 0x0

    goto :goto_3

    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$3600(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_0

    :sswitch_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/webkit/WebView$ResultTransport;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$3700(Landroid/webkit/WebViewCore;)Landroid/graphics/Point;

    move-result-object v76

    monitor-enter v24

    :try_start_2
    move-object/from16 v0, v24

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notify()V

    monitor-exit v24

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    :sswitch_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/webkit/WebView$ResultTransport;

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebView$ResultTransport;->getParams()[Ljava/lang/Object;

    move-result-object v67

    const/4 v2, 0x0

    aget-object v73, v67, v2

    check-cast v73, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v73

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v73

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v73

    iget v9, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {v73 .. v73}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/2addr v9, v10

    move-object/from16 v0, v73

    iget v10, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v73 .. v73}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v2, v4, v6, v9, v10}, Landroid/webkit/WebViewCore;->access$3800(Landroid/webkit/WebViewCore;IIII)V

    monitor-enter v25

    :try_start_3
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notify()V

    monitor-exit v25

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v2

    :sswitch_20
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/webkit/WebView$ResultTransport;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$3900(Landroid/webkit/WebViewCore;)Ljava/lang/String;

    move-result-object v81

    monitor-enter v29

    :try_start_4
    move-object/from16 v0, v29

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->notify()V

    monitor-exit v29

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v29
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v2

    :sswitch_21
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/webkit/WebView$ResultTransport;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$4000(Landroid/webkit/WebViewCore;)Ljava/lang/String;

    move-result-object v81

    monitor-enter v29

    :try_start_5
    move-object/from16 v0, v29

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->notify()V

    monitor-exit v29

    goto/16 :goto_0

    :catchall_5
    move-exception v2

    monitor-exit v29
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v2

    :sswitch_22
    const/16 v56, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkit/WebView$ResultTransport;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$4100(Landroid/webkit/WebViewCore;)Z

    move-result v56

    monitor-enter v27

    :try_start_6
    invoke-static/range {v56 .. v56}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    monitor-exit v27

    goto/16 :goto_0

    :catchall_6
    move-exception v2

    monitor-exit v27
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v2

    :sswitch_23
    const/16 v80, -0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/WebView$ResultTransport;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$4200(Landroid/webkit/WebViewCore;)I

    move-result v80

    monitor-enter v28

    :try_start_7
    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notify()V

    monitor-exit v28

    goto/16 :goto_0

    :catchall_7
    move-exception v2

    monitor-exit v28
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v2

    :sswitch_24
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/webkit/WebView$ResultTransport;

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebView$ResultTransport;->getParams()[Ljava/lang/Object;

    move-result-object v67

    const/4 v2, 0x0

    aget-object v50, v67, v2

    check-cast v50, Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$4300(Landroid/webkit/WebViewCore;Z)Landroid/graphics/Rect;

    move-result-object v42

    monitor-enter v25

    :try_start_8
    move-object/from16 v0, v25

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notify()V

    monitor-exit v25

    goto/16 :goto_0

    :catchall_8
    move-exception v2

    monitor-exit v25
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v2

    :sswitch_25
    const/16 v57, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/webkit/WebView$CmdVal;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v39

    iget-object v4, v0, Landroid/webkit/WebView$CmdVal;->command:Ljava/lang/String;

    move-object/from16 v0, v39

    iget-object v6, v0, Landroid/webkit/WebView$CmdVal;->value:Ljava/lang/String;

    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$4400(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v57

    monitor-enter v39

    :try_start_9
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Object;->notify()V

    monitor-exit v39

    goto/16 :goto_0

    :catchall_9
    move-exception v2

    monitor-exit v39
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v2

    :sswitch_26
    const/16 v34, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkit/WebView$ResultTransport;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$4500(Landroid/webkit/WebViewCore;)Z

    move-result v34

    monitor-enter v27

    :try_start_a
    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    monitor-exit v27

    goto/16 :goto_0

    :catchall_a
    move-exception v2

    monitor-exit v27
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw v2

    :sswitch_27
    const/16 v33, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkit/WebView$ResultTransport;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$4600(Landroid/webkit/WebViewCore;)Z

    move-result v33

    monitor-enter v27

    :try_start_b
    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    monitor-exit v27

    goto/16 :goto_0

    :catchall_b
    move-exception v2

    monitor-exit v27
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw v2

    :sswitch_28
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$4700(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    :sswitch_29
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v84, v0

    check-cast v84, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v84

    invoke-static {v2, v0}, Landroid/webkit/WebViewCore;->access$4800(Landroid/webkit/WebViewCore;Ljava/lang/String;)Z

    goto/16 :goto_0

    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$4900(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    :sswitch_2b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/webkit/WebView$ResultTransport;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$5000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebHTMLMarkupData;

    move-result-object v81

    monitor-enter v26

    :try_start_c
    move-object/from16 v0, v26

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notify()V

    monitor-exit v26

    goto/16 :goto_0

    :catchall_c
    move-exception v2

    monitor-exit v26
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw v2

    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_a

    const/4 v2, 0x1

    :goto_4
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$5100(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x0

    goto :goto_4

    :sswitch_2d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v71, v0

    check-cast v71, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v71

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v71

    iget v6, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$5200(Landroid/webkit/WebViewCore;II)V

    monitor-enter v71

    :try_start_d
    invoke-virtual/range {v71 .. v71}, Ljava/lang/Object;->notify()V

    monitor-exit v71

    goto/16 :goto_0

    :catchall_d
    move-exception v2

    monitor-exit v71
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw v2

    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$5300(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_0

    :sswitch_2f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v71, v0

    check-cast v71, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v71

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v71

    iget v6, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$5400(Landroid/webkit/WebViewCore;II)V

    monitor-enter v71

    :try_start_e
    invoke-virtual/range {v71 .. v71}, Ljava/lang/Object;->notify()V

    monitor-exit v71

    goto/16 :goto_0

    :catchall_e
    move-exception v2

    monitor-exit v71
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    throw v2

    :sswitch_30
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$5500(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    :sswitch_31
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkit/WebView$ResultTransport;

    const/16 v76, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$5600(Landroid/webkit/WebViewCore;)Z

    move-result v76

    monitor-enter v27

    :try_start_f
    invoke-static/range {v76 .. v76}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    monitor-exit v27

    goto/16 :goto_0

    :catchall_f
    move-exception v2

    monitor-exit v27
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    throw v2

    :sswitch_32
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$5700(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    :sswitch_33
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$5800(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    :sswitch_34
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$5900(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    :sswitch_35
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$6000(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_0

    :sswitch_36
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/WebView$ResultTransport;

    const/16 v76, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$6100(Landroid/webkit/WebViewCore;)I

    move-result v76

    monitor-enter v28

    :try_start_10
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notify()V

    monitor-exit v28

    goto/16 :goto_0

    :catchall_10
    move-exception v2

    monitor-exit v28
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    throw v2

    :sswitch_37
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Landroid/webkit/WebViewCore$EditableParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v46

    iget-object v4, v0, Landroid/webkit/WebViewCore$EditableParams;->content:Ljava/lang/String;

    move-object/from16 v0, v46

    iget v6, v0, Landroid/webkit/WebViewCore$EditableParams;->newCursorPosition:I

    move-object/from16 v0, v46

    iget-boolean v9, v0, Landroid/webkit/WebViewCore$EditableParams;->composing:Z

    move-object/from16 v0, v46

    iget-object v10, v0, Landroid/webkit/WebViewCore$EditableParams;->spanData:Ljava/util/Vector;

    invoke-static {v2, v4, v6, v9, v10}, Landroid/webkit/WebViewCore;->access$6200(Landroid/webkit/WebViewCore;Ljava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;

    move-result-object v76

    monitor-enter v46

    :try_start_11
    move-object/from16 v0, v76

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v46

    iput v2, v0, Landroid/webkit/WebViewCore$EditableParams;->startOffset:I

    move-object/from16 v0, v76

    iget v2, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v46

    iput v2, v0, Landroid/webkit/WebViewCore$EditableParams;->endOffset:I

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->notify()V

    monitor-exit v46

    goto/16 :goto_0

    :catchall_11
    move-exception v2

    monitor-exit v46
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    throw v2

    :sswitch_38
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$6300(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    :sswitch_39
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/WebView$ResultTransport;

    const/16 v76, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$6400(Landroid/webkit/WebViewCore;)I

    move-result v76

    monitor-enter v28

    :try_start_12
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notify()V

    monitor-exit v28

    goto/16 :goto_0

    :catchall_12
    move-exception v2

    monitor-exit v28
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    throw v2

    :sswitch_3a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v40

    invoke-static {v2, v0}, Landroid/webkit/WebViewCore;->access$6500(Landroid/webkit/WebViewCore;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$6600(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_0

    :sswitch_3c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/WebView$ResultTransport;

    const/16 v49, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$6700(Landroid/webkit/WebViewCore;)I

    move-result v49

    monitor-enter v28

    :try_start_13
    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notify()V

    monitor-exit v28

    goto/16 :goto_0

    :catchall_13
    move-exception v2

    monitor-exit v28
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    throw v2

    :sswitch_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$6800(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    :sswitch_3e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkit/WebView$ResultTransport;

    const/16 v76, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$6900(Landroid/webkit/WebViewCore;II)Z

    move-result v76

    monitor-enter v27

    :try_start_14
    invoke-static/range {v76 .. v76}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    monitor-exit v27

    goto/16 :goto_0

    :catchall_14
    move-exception v2

    monitor-exit v27
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    throw v2

    :sswitch_3f
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v2, :cond_b

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "No WebView has been created in this process!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    sget-object v4, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_c

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v4, v2}, Landroid/webkit/JWebCoreJavaBridge;->setNetworkOnLine(Z)V

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x0

    goto :goto_5

    :sswitch_40
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v2, :cond_d

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "No WebView has been created in this process!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v61, v0

    check-cast v61, Ljava/util/Map;

    sget-object v6, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const-string/jumbo v2, "type"

    move-object/from16 v0, v61

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v4, "subtype"

    move-object/from16 v0, v61

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v2, v4}, Landroid/webkit/JWebCoreJavaBridge;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_41
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_e

    const/4 v2, 0x1

    :goto_6
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$3200(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    goto :goto_6

    :sswitch_42
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$7000(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v4

    iget v4, v4, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-virtual {v2, v4}, Landroid/webkit/WebBackForwardList;->close(I)V

    goto/16 :goto_0

    :sswitch_43
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v75, v0

    check-cast v75, Landroid/webkit/WebViewCore$ReplaceTextData;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, v75

    iget-object v7, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mReplace:Ljava/lang/String;

    move-object/from16 v0, v75

    iget v8, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewStart:I

    move-object/from16 v0, v75

    iget v9, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewEnd:I

    move-object/from16 v0, v75

    iget v10, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mTextGeneration:I

    invoke-static/range {v4 .. v10}, Landroid/webkit/WebViewCore;->access$7100(Landroid/webkit/WebViewCore;IILjava/lang/String;III)V

    goto/16 :goto_0

    :sswitch_44
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, Landroid/webkit/WebViewCore$JSKeyData;

    move-object/from16 v0, v58

    iget-object v0, v0, Landroid/webkit/WebViewCore$JSKeyData;->mEvent:Landroid/view/KeyEvent;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual/range {v47 .. v47}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v8

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v58

    iget-object v6, v0, Landroid/webkit/WebViewCore$JSKeyData;->mCurrentText:Ljava/lang/String;

    invoke-virtual/range {v47 .. v47}, Landroid/view/KeyEvent;->isDown()Z

    move-result v9

    invoke-virtual/range {v47 .. v47}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v10

    invoke-virtual/range {v47 .. v47}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v11

    invoke-virtual/range {v47 .. v47}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v12

    invoke-static/range {v4 .. v12}, Landroid/webkit/WebViewCore;->access$7200(Landroid/webkit/WebViewCore;ILjava/lang/String;IIZZZZ)V

    goto/16 :goto_0

    :sswitch_45
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/webkit/WebViewCore$CursorData;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v31

    iget v4, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$7300(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    :sswitch_46
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Landroid/webkit/SslCertLookupTable;->getInstance()Landroid/webkit/SslCertLookupTable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/SslCertLookupTable;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$2900(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$7400(Landroid/webkit/WebViewCore;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/Network;->clearUserSslPrefTable()V

    goto/16 :goto_0

    :sswitch_47
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v83, v0

    check-cast v83, Landroid/webkit/WebViewCore$TouchUpData;

    move-object/from16 v0, v83

    iget v2, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNativeLayer:I

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v83

    iget v4, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNativeLayer:I

    move-object/from16 v0, v83

    iget-object v6, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNativeLayerRect:Landroid/graphics/Rect;

    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$7500(Landroid/webkit/WebViewCore;ILandroid/graphics/Rect;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v9, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v83

    iget v10, v0, Landroid/webkit/WebViewCore$TouchUpData;->mMoveGeneration:I

    move-object/from16 v0, v83

    iget v11, v0, Landroid/webkit/WebViewCore$TouchUpData;->mFrame:I

    move-object/from16 v0, v83

    iget v12, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNode:I

    move-object/from16 v0, v83

    iget v13, v0, Landroid/webkit/WebViewCore$TouchUpData;->mX:I

    move-object/from16 v0, v83

    iget v14, v0, Landroid/webkit/WebViewCore$TouchUpData;->mY:I

    move-object/from16 v0, v83

    iget-boolean v15, v0, Landroid/webkit/WebViewCore$TouchUpData;->mUseLightTouch:Z

    invoke-static/range {v9 .. v15}, Landroid/webkit/WebViewCore;->access$7600(Landroid/webkit/WebViewCore;IIIIIZ)V

    goto/16 :goto_0

    :sswitch_48
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v82, v0

    check-cast v82, Landroid/webkit/WebViewCore$TouchEventData;

    move-object/from16 v0, v82

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    array-length v14, v2

    new-array v12, v14, [I

    new-array v13, v14, [I

    const/16 v30, 0x0

    :goto_7
    move/from16 v0, v30

    if-ge v0, v14, :cond_11

    move-object/from16 v0, v82

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v30

    iget v2, v2, Landroid/graphics/Point;->x:I

    aput v2, v12, v30

    move-object/from16 v0, v82

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v30

    iget v2, v2, Landroid/graphics/Point;->y:I

    aput v2, v13, v30

    add-int/lit8 v30, v30, 0x1

    goto :goto_7

    :cond_11
    move-object/from16 v0, v82

    iget v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v82

    iget v4, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    move-object/from16 v0, v82

    iget-object v6, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$7500(Landroid/webkit/WebViewCore;ILandroid/graphics/Rect;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v9, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v82

    iget v10, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    move-object/from16 v0, v82

    iget-object v11, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    move-object/from16 v0, v82

    iget v15, v0, Landroid/webkit/WebViewCore$TouchEventData;->mActionIndex:I

    move-object/from16 v0, v82

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    move/from16 v16, v0

    invoke-static/range {v9 .. v16}, Landroid/webkit/WebViewCore;->access$7700(Landroid/webkit/WebViewCore;I[I[I[IIII)Z

    move-result v2

    move-object/from16 v0, v82

    iput-boolean v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeResult:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$600(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v4, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x73

    move-object/from16 v0, v82

    iget v9, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    move-object/from16 v0, v82

    iget-boolean v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeResult:Z

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, v82

    invoke-static {v4, v6, v9, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_13
    const/4 v2, 0x0

    goto :goto_8

    :sswitch_49
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_14

    const/4 v2, 0x1

    :goto_9
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$7800(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_0

    :cond_14
    const/4 v2, 0x0

    goto :goto_9

    :sswitch_4a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, Landroid/webkit/WebViewCore$JSInterfaceData;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v58

    iget-object v4, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mObject:Ljava/lang/Object;

    move-object/from16 v0, v58

    iget-object v6, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/webkit/BrowserFrame;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, Landroid/webkit/WebViewCore$JSInterfaceData;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v58

    iget-object v4, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/webkit/BrowserFrame;->removeJavascriptInterface(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v4, v2}, Landroid/webkit/BrowserFrame;->externalRepresentation(Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_4d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v4, v2}, Landroid/webkit/BrowserFrame;->documentAsText(Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_4e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Landroid/webkit/WebViewCore$CursorData;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v48

    iget v4, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move-object/from16 v0, v48

    iget v6, v0, Landroid/webkit/WebViewCore$CursorData;->mNode:I

    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$7900(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_0

    :sswitch_4f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Landroid/webkit/WebViewCore$CursorData;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v41

    iget v4, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move-object/from16 v0, v41

    iget v6, v0, Landroid/webkit/WebViewCore$CursorData;->mX:I

    move-object/from16 v0, v41

    iget v9, v0, Landroid/webkit/WebViewCore$CursorData;->mY:I

    invoke-static {v2, v4, v6, v9}, Landroid/webkit/WebViewCore;->access$8000(Landroid/webkit/WebViewCore;III)V

    goto/16 :goto_0

    :sswitch_50
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/webkit/WebViewCore$CursorData;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v32

    iget v4, v0, Landroid/webkit/WebViewCore$CursorData;->mMoveGeneration:I

    move-object/from16 v0, v32

    iget v6, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move-object/from16 v0, v32

    iget v9, v0, Landroid/webkit/WebViewCore$CursorData;->mX:I

    move-object/from16 v0, v32

    iget v10, v0, Landroid/webkit/WebViewCore$CursorData;->mY:I

    invoke-static {v2, v4, v6, v9, v10}, Landroid/webkit/WebViewCore;->access$8100(Landroid/webkit/WebViewCore;IIII)V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$8200(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    :sswitch_51
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Landroid/os/Message;

    invoke-virtual/range {v52 .. v52}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "url"

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    invoke-static {v6, v9, v10}, Landroid/webkit/WebViewCore;->access$8300(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v52 .. v52}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "title"

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    invoke-static {v6, v9, v10}, Landroid/webkit/WebViewCore;->access$8400(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v52 .. v52}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "src"

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    invoke-static {v6, v9, v10}, Landroid/webkit/WebViewCore;->access$8500(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v52 .. v52}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :sswitch_52
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$8600(Landroid/webkit/WebViewCore;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$600(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$600(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->postInvalidate()V

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$8700(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    :sswitch_53
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v54, v0

    check-cast v54, Landroid/os/Message;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->documentHasImages()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, v54

    iput v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual/range {v54 .. v54}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_16
    const/4 v2, 0x0

    goto :goto_a

    :sswitch_54
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Landroid/webkit/WebViewCore$TextSelectionData;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v45

    iget v4, v0, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    move-object/from16 v0, v45

    iget v6, v0, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    invoke-static {v2, v4, v6, v9}, Landroid/webkit/WebViewCore;->access$8800(Landroid/webkit/WebViewCore;III)V

    goto/16 :goto_0

    :sswitch_55
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$8900(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_0

    :sswitch_56
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$9000(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$600(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x82

    move-object/from16 v0, v63

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :sswitch_57
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/util/SparseBooleanArray;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v37, v0

    move/from16 v0, v37

    new-array v0, v0, [Z

    move-object/from16 v36, v0

    const/16 v30, 0x0

    :goto_b
    move/from16 v0, v30

    move/from16 v1, v37

    if-ge v0, v1, :cond_17

    move-object/from16 v0, v35

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    aput-boolean v2, v36, v30

    add-int/lit8 v30, v30, 0x1

    goto :goto_b

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-static {v2, v0, v1}, Landroid/webkit/WebViewCore;->access$9100(Landroid/webkit/WebViewCore;[ZI)V

    goto/16 :goto_0

    :sswitch_58
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$9200(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    :sswitch_59
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$9300(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    :sswitch_5a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_18

    const/4 v2, 0x1

    :goto_c
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$9400(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_0

    :cond_18
    const/4 v2, 0x0

    goto :goto_c

    :sswitch_5b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_19

    const/4 v2, 0x1

    :goto_d
    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$9500(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_0

    :cond_19
    const/4 v2, 0x0

    goto :goto_d

    :sswitch_5c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$9600(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    :sswitch_5d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$9700(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    :sswitch_5e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$9800(Landroid/webkit/WebViewCore;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1900(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    :sswitch_60
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v77, v0

    check-cast v77, Landroid/webkit/WebView$SaveWebArchiveMessage;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v77

    iget-object v4, v0, Landroid/webkit/WebView$SaveWebArchiveMessage;->mBasename:Ljava/lang/String;

    move-object/from16 v0, v77

    iget-boolean v6, v0, Landroid/webkit/WebView$SaveWebArchiveMessage;->mAutoname:Z

    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$9900(Landroid/webkit/WebViewCore;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v77

    iput-object v2, v0, Landroid/webkit/WebView$SaveWebArchiveMessage;->mResultFile:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$600(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x84

    move-object/from16 v0, v77

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :sswitch_61
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Landroid/webkit/WebViewCore$GeolocationPermissionsData;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v44

    iget-object v4, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mOrigin:Ljava/lang/String;

    move-object/from16 v0, v44

    iget-boolean v6, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mAllow:Z

    move-object/from16 v0, v44

    iget-boolean v9, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mRemember:Z

    invoke-static {v2, v4, v6, v9}, Landroid/webkit/WebViewCore;->access$10000(Landroid/webkit/WebViewCore;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :sswitch_62
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$10100(Landroid/webkit/WebViewCore;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$600(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x7b

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    const/4 v9, 0x0

    invoke-virtual {v2, v4, v6, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$10202(Landroid/webkit/WebViewCore;Z)Z

    goto/16 :goto_0

    :sswitch_63
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$10300(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    :sswitch_64
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :sswitch_65
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$10400(Landroid/webkit/WebViewCore;[Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_66
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v64, v0

    check-cast v64, Landroid/webkit/WebViewCore$MotionUpData;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v64

    iget v4, v0, Landroid/webkit/WebViewCore$MotionUpData;->mFrame:I

    move-object/from16 v0, v64

    iget v6, v0, Landroid/webkit/WebViewCore$MotionUpData;->mNode:I

    move-object/from16 v0, v64

    iget-object v9, v0, Landroid/webkit/WebViewCore$MotionUpData;->mBounds:Landroid/graphics/Rect;

    invoke-static {v2, v4, v6, v9}, Landroid/webkit/WebViewCore;->access$10500(Landroid/webkit/WebViewCore;IILandroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$8600(Landroid/webkit/WebViewCore;)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$600(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x77

    move-object/from16 v0, v64

    iget v6, v0, Landroid/webkit/WebViewCore$MotionUpData;->mX:I

    move-object/from16 v0, v64

    iget v9, v0, Landroid/webkit/WebViewCore$MotionUpData;->mY:I

    invoke-virtual {v2, v4, v6, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v62

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$600(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, v62

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto/16 :goto_0

    :sswitch_67
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$10600(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    :sswitch_68
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$10700(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    :sswitch_69
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v4}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)I

    move-result v4

    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$10800(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    :sswitch_6a
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v2, :cond_1b

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "No WebView has been created in this process!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1b
    sget-object v4, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v4, v2}, Landroid/webkit/JWebCoreJavaBridge;->addPackageNames(Ljava/util/Set;)V

    goto/16 :goto_0

    :sswitch_6b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/webkit/WebViewCore$TouchHighlightData;

    move-object/from16 v0, v43

    iget v2, v0, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayer:I

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v43

    iget v4, v0, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayer:I

    move-object/from16 v0, v43

    iget-object v6, v0, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayerRect:Landroid/graphics/Rect;

    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$7500(Landroid/webkit/WebViewCore;ILandroid/graphics/Rect;)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v43

    iget v4, v0, Landroid/webkit/WebViewCore$TouchHighlightData;->mX:I

    move-object/from16 v0, v43

    iget v6, v0, Landroid/webkit/WebViewCore$TouchHighlightData;->mY:I

    move-object/from16 v0, v43

    iget v9, v0, Landroid/webkit/WebViewCore$TouchHighlightData;->mSlop:I

    invoke-static {v2, v4, v6, v9}, Landroid/webkit/WebViewCore;->access$10900(Landroid/webkit/WebViewCore;III)Ljava/util/ArrayList;

    move-result-object v74

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$600(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x83

    move-object/from16 v0, v74

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :sswitch_6c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$11000(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    :sswitch_6d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$11100(Landroid/webkit/WebViewCore;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$600(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x86

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :sswitch_6e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v67, v0

    check-cast v67, Landroid/webkit/WebViewCore$CopyParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v15, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v67

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move/from16 v16, v0

    move-object/from16 v0, v67

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    move/from16 v17, v0

    move-object/from16 v0, v67

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    move/from16 v18, v0

    move-object/from16 v0, v67

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mSmartSelection:Z

    move/from16 v19, v0

    move-object/from16 v0, v67

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mSelectionMove:Z

    move/from16 v20, v0

    move-object/from16 v0, v67

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mZoomScale:F

    move/from16 v21, v0

    move-object/from16 v0, v67

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mGranularity:I

    move/from16 v22, v0

    invoke-static/range {v15 .. v22}, Landroid/webkit/WebViewCore;->access$11200(Landroid/webkit/WebViewCore;IIIZZFI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v67

    iget v4, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$4900(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    :sswitch_6f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v79, v0

    check-cast v79, Landroid/webkit/WebViewCore$CopyParams;

    const/16 v51, 0x0

    move-object/from16 v0, v79

    iget-boolean v2, v0, Landroid/webkit/WebViewCore$CopyParams;->mSelectionMove:Z

    if-nez v2, :cond_1d

    const/16 v51, 0x1

    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v79

    iget v4, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move-object/from16 v0, v79

    iget v6, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    const/4 v9, 0x0

    move/from16 v0, v51

    invoke-static {v2, v4, v6, v0, v9}, Landroid/webkit/WebViewCore;->access$11300(Landroid/webkit/WebViewCore;IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$4900(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    :sswitch_70
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/webkit/WebViewCore$CopyParams;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v23

    iget v6, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move-object/from16 v0, v23

    iget v9, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    move-object/from16 v0, v23

    iget v10, v0, Landroid/webkit/WebViewCore$CopyParams;->mZoomScale:F

    move-object/from16 v0, v23

    iget-boolean v11, v0, Landroid/webkit/WebViewCore$CopyParams;->mSmartSelection:Z

    invoke-static {v4, v6, v9, v10, v11}, Landroid/webkit/WebViewCore;->access$11400(Landroid/webkit/WebViewCore;IIFZ)Z

    move-result v4

    if-ne v2, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v23

    iget v4, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    invoke-static {v2, v4}, Landroid/webkit/WebViewCore;->access$4900(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    :sswitch_71
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/webkit/WebViewCore$CopyParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v38

    iget v4, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move-object/from16 v0, v38

    iget v6, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    invoke-static {v2, v4, v6}, Landroid/webkit/WebViewCore;->access$11500(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_0

    :sswitch_72
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/webkit/BrowserFrame;->stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_73
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$11600(Landroid/webkit/WebViewCore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$7000(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;

    move-result-object v2

    move-object/from16 v0, v70

    invoke-virtual {v2, v0}, Landroid/webkit/CallbackProxy;->getReaderData(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_74
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$11700(Landroid/webkit/WebViewCore;)I

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/webkit/WebViewCore;->access$11800(Landroid/webkit/WebViewCore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$7000(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;

    move-result-object v2

    move-object/from16 v0, v72

    invoke-virtual {v2, v0}, Landroid/webkit/CallbackProxy;->getRecognizeData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$7000(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;

    move-result-object v2

    const-string v4, "false"

    invoke-virtual {v2, v4}, Landroid/webkit/CallbackProxy;->getRecognizeData(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x60 -> :sswitch_0
        0x61 -> :sswitch_4
        0x62 -> :sswitch_5
        0x63 -> :sswitch_6
        0x64 -> :sswitch_7
        0x65 -> :sswitch_a
        0x66 -> :sswitch_b
        0x67 -> :sswitch_c
        0x68 -> :sswitch_d
        0x69 -> :sswitch_10
        0x6a -> :sswitch_14
        0x6b -> :sswitch_11
        0x6c -> :sswitch_15
        0x6d -> :sswitch_16
        0x6e -> :sswitch_17
        0x6f -> :sswitch_41
        0x70 -> :sswitch_42
        0x71 -> :sswitch_55
        0x72 -> :sswitch_43
        0x73 -> :sswitch_44
        0x74 -> :sswitch_13
        0x75 -> :sswitch_52
        0x76 -> :sswitch_f
        0x77 -> :sswitch_3f
        0x78 -> :sswitch_53
        0x79 -> :sswitch_e
        0x7a -> :sswitch_54
        0x7b -> :sswitch_57
        0x7c -> :sswitch_58
        0x7d -> :sswitch_64
        0x7e -> :sswitch_59
        0x7f -> :sswitch_4e
        0x80 -> :sswitch_45
        0x82 -> :sswitch_1
        0x84 -> :sswitch_8
        0x85 -> :sswitch_62
        0x86 -> :sswitch_63
        0x87 -> :sswitch_4f
        0x88 -> :sswitch_50
        0x89 -> :sswitch_51
        0x8a -> :sswitch_4a
        0x8b -> :sswitch_9
        0x8c -> :sswitch_47
        0x8d -> :sswitch_48
        0x8e -> :sswitch_49
        0x8f -> :sswitch_18
        0x90 -> :sswitch_19
        0x91 -> :sswitch_1a
        0x92 -> :sswitch_66
        0x93 -> :sswitch_60
        0x94 -> :sswitch_2
        0x95 -> :sswitch_4b
        0x96 -> :sswitch_46
        0xa0 -> :sswitch_4c
        0xa1 -> :sswitch_4d
        0xaa -> :sswitch_5a
        0xab -> :sswitch_5b
        0xac -> :sswitch_5c
        0xad -> :sswitch_5d
        0xae -> :sswitch_5e
        0xaf -> :sswitch_5f
        0xb4 -> :sswitch_61
        0xb5 -> :sswitch_65
        0xb6 -> :sswitch_67
        0xb7 -> :sswitch_40
        0xb8 -> :sswitch_6a
        0xbb -> :sswitch_6b
        0xbe -> :sswitch_56
        0xbf -> :sswitch_6c
        0xc0 -> :sswitch_6d
        0xc2 -> :sswitch_72
        0xc3 -> :sswitch_68
        0xc4 -> :sswitch_69
        0xc8 -> :sswitch_3
        0xd2 -> :sswitch_6e
        0xd3 -> :sswitch_71
        0xd4 -> :sswitch_70
        0xd5 -> :sswitch_6e
        0xd8 -> :sswitch_6f
        0xd9 -> :sswitch_73
        0xda -> :sswitch_74
        0xf0 -> :sswitch_12
        0x1fc -> :sswitch_1b
        0x1fd -> :sswitch_1c
        0x1fe -> :sswitch_2d
        0x1ff -> :sswitch_1d
        0x200 -> :sswitch_21
        0x201 -> :sswitch_1e
        0x202 -> :sswitch_20
        0x203 -> :sswitch_25
        0x204 -> :sswitch_29
        0x205 -> :sswitch_2a
        0x206 -> :sswitch_2b
        0x207 -> :sswitch_2c
        0x209 -> :sswitch_24
        0x20b -> :sswitch_30
        0x20c -> :sswitch_31
        0x20d -> :sswitch_26
        0x20f -> :sswitch_27
        0x211 -> :sswitch_28
        0x212 -> :sswitch_22
        0x213 -> :sswitch_23
        0x214 -> :sswitch_33
        0x215 -> :sswitch_34
        0x217 -> :sswitch_36
        0x218 -> :sswitch_37
        0x219 -> :sswitch_32
        0x21a -> :sswitch_35
        0x21b -> :sswitch_2f
        0x21c -> :sswitch_2e
        0x21d -> :sswitch_1f
        0x21e -> :sswitch_39
        0x21f -> :sswitch_3d
        0x220 -> :sswitch_3a
        0x221 -> :sswitch_3b
        0x222 -> :sswitch_3c
        0x223 -> :sswitch_38
        0x224 -> :sswitch_3e
    .end sparse-switch
.end method
