.class Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;
.super Ljava/lang/Object;
.source "MessageListXLFragmentManager.java"

# interfaces
.implements Lcom/android/email/activity/MailboxFinder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXLFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailboxFinderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXLFragmentManager;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListXLFragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListXLFragmentManager;Lcom/android/email/activity/MessageListXLFragmentManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;-><init>(Lcom/android/email/activity/MessageListXLFragmentManager;)V

    return-void
.end method


# virtual methods
.method public onAccountNotFound()V
    .locals 0

    return-void
.end method

.method public onAccountSecurityHold(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$300(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;->onAccountSecurityHold(J)V

    return-void
.end method

.method public onMailboxFound(JJ)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-wide v1, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onMailboxNotFound(J)V
    .locals 0

    return-void
.end method
