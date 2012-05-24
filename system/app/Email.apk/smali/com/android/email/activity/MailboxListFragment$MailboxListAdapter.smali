.class Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MailboxListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MailboxListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final PROJECTION:[Ljava/lang/String;

.field itemBackground:Landroid/graphics/drawable/Drawable;

.field mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResourceID:I

.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MailboxListFragment;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "unreadCount"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "parentServerId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "serverId"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->itemBackground:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->mResourceID:I

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/email/activity/MailboxListFragment;->access$100(Lcom/android/email/activity/MailboxListFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->itemBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14

    if-nez p2, :cond_3

    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v11, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->mResourceID:I

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    :goto_0
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v10}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getMailboxType()I

    move-result v8

    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/email/FolderProperties;->getDisplayName(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v10}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getMailboxDisplayName()Ljava/lang/String;

    move-result-object v7

    :cond_0
    const v10, 0x7f100159

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v7, :cond_1

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v7, 0x0

    const v10, 0x7f10015d

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v10}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getMailboxUnreadCount()Ljava/lang/String;

    move-result-object v7

    const v10, 0x7f100007

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v10, 0x1

    if-eq v8, v10, :cond_2

    const/4 v10, 0x2

    if-eq v8, v10, :cond_2

    const/16 v10, 0xc

    if-ne v8, v10, :cond_6

    :cond_2
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$2900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v11

    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v10}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getServerId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v10}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->isOpened()Z

    move-result v10

    if-eqz v10, :cond_4

    const v10, 0x7f020095

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$1800(Lcom/android/email/activity/MailboxListFragment;)I

    move-result v10

    if-ne p1, v10, :cond_7

    const v10, 0x7f02033c

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_2
    const v10, 0x7f10015b

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v10}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getLevel()I

    move-result v10

    if-lez v10, :cond_8

    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v10}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v10}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getLevel()I

    move-result v10

    mul-int/lit8 v10, v10, 0xf

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :goto_3
    const v10, 0x7f100156

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v10, 0x7f100160

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object v9

    :cond_3
    move-object/from16 v9, p2

    check-cast v9, Landroid/widget/RelativeLayout;

    goto/16 :goto_0

    :cond_4
    const v10, 0x7f020091

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    const v10, 0x7f020091

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_6
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/email/FolderProperties;->getIconIds(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_7
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->itemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_8
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_3
.end method
