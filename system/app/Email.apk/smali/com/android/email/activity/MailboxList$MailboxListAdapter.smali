.class Lcom/android/email/activity/MailboxList$MailboxListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MailboxList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MailboxListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/email/activity/MailboxList$MailboxListItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final PROJECTION:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResourceID:I

.field final synthetic this$0:Lcom/android/email/activity/MailboxList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MailboxList;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MailboxList$MailboxListItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxList;

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

    iput-object v0, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->PROJECTION:[Ljava/lang/String;

    iput p3, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->mResourceID:I

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15

    if-nez p2, :cond_4

    iget-object v11, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v12, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->mResourceID:I

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    :goto_0
    iget-object v11, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v11}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v11}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxType()I

    move-result v9

    iget-object v11, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/android/email/FolderProperties;->getDisplayName(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    iget-object v11, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v11}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v11}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxDisplayName()Ljava/lang/String;

    move-result-object v8

    :cond_0
    const v11, 0x7f100159

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v8, :cond_1

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v8, 0x0

    const v11, 0x7f10015d

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v8, :cond_5

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const/4 v1, -0x1

    iget-object v11, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v11}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v11}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxUnreadCount()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    const v11, 0x7f100007

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const/4 v11, 0x1

    if-eq v9, v11, :cond_3

    const/4 v11, 0x2

    if-eq v9, v11, :cond_3

    const/16 v11, 0xc

    if-ne v9, v11, :cond_8

    :cond_3
    iget-object v11, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v11}, Lcom/android/email/activity/MailboxList;->access$1300(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v12

    iget-object v11, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v11}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v11}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getServerId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v11}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v11}, Lcom/android/email/activity/MailboxList$MailboxListItem;->isOpened()Z

    move-result v11

    if-eqz v11, :cond_6

    const v11, 0x7f0200c8

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    iget-object v11, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v11}, Lcom/android/email/activity/MailboxList;->access$1600(Lcom/android/email/activity/MailboxList;)Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v11}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_9

    const v11, 0x7f02033c

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    const/4 v11, -0x1

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    const v11, 0x7f10015b

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v11, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v11}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v11}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getLevel()I

    move-result v11

    if-lez v11, :cond_a

    iget-object v11, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v11}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v11}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getLevel()I

    move-result v11

    mul-int/lit8 v11, v11, 0xf

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :goto_4
    const v11, 0x7f100156

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v11, 0x7f100160

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object v10

    :cond_4
    move-object/from16 v10, p2

    check-cast v10, Landroid/widget/RelativeLayout;

    goto/16 :goto_0

    :cond_5
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_6
    const v11, 0x7f0200c9

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_7
    const v11, 0x7f0200c6

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_8
    iget-object v11, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/android/email/FolderProperties;->getIconIds(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_9
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const/high16 v11, -0x100

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    :cond_a
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_4
.end method
