.class Landroid/webkit/WebIconDatabase$EventHandler$1;
.super Landroid/os/Handler;
.source "WebIconDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebIconDatabase$EventHandler;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebIconDatabase$EventHandler;


# direct methods
.method constructor <init>(Landroid/webkit/WebIconDatabase$EventHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/WebIconDatabase$EventHandler$1;->this$0:Landroid/webkit/WebIconDatabase$EventHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/webkit/WebIconDatabase;->access$100(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Landroid/webkit/WebIconDatabase;->access$200()V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Landroid/webkit/WebIconDatabase;->access$300()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebIconDatabase$IconListener;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebIconDatabase$EventHandler$1;->this$0:Landroid/webkit/WebIconDatabase$EventHandler;

    invoke-static {v2, v1, v0}, Landroid/webkit/WebIconDatabase$EventHandler;->access$400(Landroid/webkit/WebIconDatabase$EventHandler;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Landroid/webkit/WebIconDatabase$EventHandler$1;->this$0:Landroid/webkit/WebIconDatabase$EventHandler;

    invoke-static {v2, p1}, Landroid/webkit/WebIconDatabase$EventHandler;->access$500(Landroid/webkit/WebIconDatabase$EventHandler;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/webkit/WebIconDatabase;->access$600(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/webkit/WebIconDatabase;->access$700(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
