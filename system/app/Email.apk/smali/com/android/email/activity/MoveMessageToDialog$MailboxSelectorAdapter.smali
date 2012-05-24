.class Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MoveMessageToDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MoveMessageToDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailboxSelectorAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/email/activity/MoveMessageToDialog$DialogItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MoveMessageToDialog;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MoveMessageToDialog;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MoveMessageToDialog$DialogItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v2, p2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v4, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-virtual {v4}, Lcom/android/email/activity/MoveMessageToDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f04006d

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;

    iget-object v4, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-direct {v3, v4, v2}, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;-><init>(Lcom/android/email/activity/MoveMessageToDialog;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;

    iget-wide v4, v4, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->mailboxId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->getTargetAccountView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->getTargetMailboxView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->getTargetAccountTextView()Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, v0, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->AccountName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-static {v4}, Lcom/android/email/activity/MoveMessageToDialog;->access$000(Lcom/android/email/activity/MoveMessageToDialog;)Ljava/util/HashSet;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->accountId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->getTargetAccountImageView()Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f02025b

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->getTargetAccountImageView()Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f02025a

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->getTargetAccountView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->getTargetMailboxView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->getTargetMailboxTextView()Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, v0, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->mailboxName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;->getTargetMailboxImageView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v5

    iget v6, v0, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->mailboxType:I

    iget-wide v7, v0, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->mailboxId:J

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/email/FolderProperties;->getIcon(IJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
