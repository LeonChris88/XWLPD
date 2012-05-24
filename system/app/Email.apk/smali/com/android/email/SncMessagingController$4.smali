.class Lcom/android/email/SncMessagingController$4;
.super Ljava/lang/Object;
.source "SncMessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/SncMessagingController;->closePooledConnection(Lcom/android/emailcommon/provider/EmailContent$Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/SncMessagingController;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;


# direct methods
.method constructor <init>(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/SncMessagingController$4;->this$0:Lcom/android/email/SncMessagingController;

    iput-object p2, p0, Lcom/android/email/SncMessagingController$4;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/email/SncMessagingController$4;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, p0, Lcom/android/email/SncMessagingController$4;->this$0:Lcom/android/email/SncMessagingController;

    invoke-static {v3}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/SncMessagingController$4;->this$0:Lcom/android/email/SncMessagingController;

    invoke-static {v3}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/BaseSncStore;->closePooledConnections()V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->printStackTrace()V

    goto :goto_0
.end method
