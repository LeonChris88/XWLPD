.class Lcom/android/email/activity/MessageListFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const v9, 0x7f08037e

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v5, "android.intent.action.EMAILSEARCH_COMPLETED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "SearchResult"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v5, "Total"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "StartRange"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "EndRange"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v5, "MessageListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " total = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "startRange = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "endRange ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, v8, :cond_1

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v5, v4}, Lcom/android/email/activity/MessageListFragment;->access$102(Lcom/android/email/activity/MessageListFragment;I)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v5, 0xd

    if-ne v2, v5, :cond_2

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v5}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    const v7, 0x7f08050d

    invoke-virtual {v6, v7}, Lcom/android/email/activity/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const/16 v5, 0xc

    if-ne v2, v5, :cond_3

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v5}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    const v7, 0x7f08037b

    invoke-virtual {v6, v7}, Lcom/android/email/activity/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const/16 v5, 0xb

    if-ne v2, v5, :cond_4

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v5}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v6, v9}, Lcom/android/email/activity/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    const/16 v5, 0xa

    if-ne v2, v5, :cond_5

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v5}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    const v7, 0x7f08037d

    invoke-virtual {v6, v7}, Lcom/android/email/activity/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    const/16 v5, 0x8

    if-ne v2, v5, :cond_6

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v5}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    const v7, 0x7f08037c

    invoke-virtual {v6, v7}, Lcom/android/email/activity/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v5}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v6, v9}, Lcom/android/email/activity/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
