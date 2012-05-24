.class public Lcom/android/email/activity/bubblelayout/BubbleLayout;
.super Landroid/widget/LinearLayout;
.source "BubbleLayout.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBottomLayout:Landroid/widget/LinearLayout;

.field private mBubbleButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/bubblelayout/BubbleButton;",
            ">;"
        }
    .end annotation
.end field

.field private mBubbleClickMenuDialog:Landroid/app/AlertDialog;

.field private mBubbleClickMenuDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mBubbleRecipientLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurBubbleButton:Lcom/android/email/activity/bubblelayout/BubbleButton;

.field private mExpectedLayoutWidth:I

.field private mHandler:Landroid/os/Handler;

.field private mIndexOfSelectedBubbleByClickingButton:I

.field private mSummaryTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mExpectedLayoutWidth:I

    iput-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialogBuilder:Landroid/app/AlertDialog$Builder;

    iput-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mCurBubbleButton:Lcom/android/email/activity/bubblelayout/BubbleButton;

    const-string v0, "BubbleLayout >> "

    iput-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mExpectedLayoutWidth:I

    iput-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialogBuilder:Landroid/app/AlertDialog$Builder;

    iput-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mCurBubbleButton:Lcom/android/email/activity/bubblelayout/BubbleButton;

    const-string v0, "BubbleLayout >> "

    iput-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/bubblelayout/BubbleLayout;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/bubblelayout/BubbleLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->showBubbleButtonClickMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/bubblelayout/BubbleLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mIndexOfSelectedBubbleByClickingButton:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/bubblelayout/BubbleLayout;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/bubblelayout/BubbleLayout;Lcom/android/email/activity/bubblelayout/BubbleData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addToContact(Lcom/android/email/activity/bubblelayout/BubbleData;)V

    return-void
.end method

.method private addButton(Lcom/android/email/activity/bubblelayout/BubbleButton;)Ljava/lang/Boolean;
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_0
    invoke-virtual {p1}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getExpectedWidth()I

    move-result v2

    if-lez v4, :cond_1

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    if-nez v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->makeOneLineLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_3

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/bubblelayout/BubbleButton;

    invoke-virtual {v6}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getExpectedWidth()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    goto :goto_1

    :cond_3
    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getWidth()I

    move-result v6

    if-nez v6, :cond_5

    invoke-direct {p0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getExpectedLayoutWidth()I

    move-result v1

    :cond_4
    :goto_3
    if-gt v5, v1, :cond_6

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_4
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getWidth()I

    move-result v1

    goto :goto_3

    :cond_6
    if-ne v5, v2, :cond_7

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_7
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->makeOneLineLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4
.end method

.method private addToContact(Lcom/android/email/activity/bubblelayout/BubbleData;)V
    .locals 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "email"

    invoke-virtual {p1}, Lcom/android/email/activity/bubblelayout/BubbleData;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/email/activity/bubblelayout/BubbleData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v3, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    const v4, 0x7011214

    invoke-virtual {v3, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getExpectedLayoutWidth()I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mExpectedLayoutWidth:I

    return v0
.end method

.method private getSummaryText(I)Ljava/lang/String;
    .locals 13

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v8, ""

    invoke-direct {v0, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, ""

    const-string v3, ""

    const-string v1, ""

    iget-object v8, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    move-object v6, v5

    :goto_0
    return-object v6

    :cond_1
    iget-object v8, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v8, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/bubblelayout/BubbleButton;

    invoke-virtual {v8}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x1

    if-ne v4, v8, :cond_3

    move-object v5, v1

    :cond_2
    :goto_1
    move-object v6, v5

    goto :goto_0

    :cond_3
    if-lez p1, :cond_5

    move v7, p1

    :goto_2
    if-nez v7, :cond_7

    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getWidth()I

    move-result v8

    if-nez v8, :cond_6

    invoke-direct {p0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getExpectedLayoutWidth()I

    move-result v8

    :goto_3
    add-int/lit8 v8, v8, 0x0

    add-int/lit8 v7, v8, -0x1b

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    :goto_5
    if-gt v2, v4, :cond_2

    if-ne v2, v4, :cond_8

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_6
    iget-object v8, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    float-to-int v8, v8

    if-ge v8, v7, :cond_9

    move-object v5, v3

    if-ge v2, v4, :cond_4

    const-string v8, "; "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v8, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/bubblelayout/BubbleButton;

    invoke-virtual {v8}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    iget-object v8, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getWidth()I

    move-result v8

    goto :goto_3

    :cond_7
    add-int/lit8 v7, v7, -0xa

    goto :goto_4

    :cond_8
    iget-object v8, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    const v9, 0x7f0802d2

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sub-int v12, v4, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_9
    const/4 v8, 0x1

    if-ne v2, v8, :cond_2

    iget-object v8, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    const v9, 0x7f0802d2

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sub-int v12, v4, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1
.end method

.method private isDuplicatedAddress(Ljava/lang/String;)Z
    .locals 3

    iget-object v2, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleButton;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getBubbleData()Lcom/android/email/activity/bubblelayout/BubbleData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleData;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private makeOneBubbleButton(Landroid/content/Context;Lcom/android/email/activity/bubblelayout/BubbleData;Z)Lcom/android/email/activity/bubblelayout/BubbleButton;
    .locals 4

    new-instance v1, Lcom/android/email/activity/bubblelayout/BubbleButton;

    invoke-direct {v1, p1, p2}, Lcom/android/email/activity/bubblelayout/BubbleButton;-><init>(Landroid/content/Context;Lcom/android/email/activity/bubblelayout/BubbleData;)V

    new-instance v2, Lcom/android/email/activity/bubblelayout/BubbleLayout$2;

    invoke-direct {v2, p0}, Lcom/android/email/activity/bubblelayout/BubbleLayout$2;-><init>(Lcom/android/email/activity/bubblelayout/BubbleLayout;)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    const v3, 0x7f050001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private makeOneLineLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 4

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-object v0
.end method

.method private showBubbleButtonClickMenu(Landroid/view/View;)V
    .locals 11

    const v10, 0x7f0a0028

    move-object v1, p1

    check-cast v1, Lcom/android/email/activity/bubblelayout/BubbleButton;

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    iput v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mIndexOfSelectedBubbleByClickingButton:I

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v6, :cond_0

    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialogBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    :cond_0
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    iget v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mIndexOfSelectedBubbleByClickingButton:I

    if-ltz v6, :cond_2

    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getBubbleData()Lcom/android/email/activity/bubblelayout/BubbleData;

    move-result-object v0

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleData;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleData;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getBubbleData()Lcom/android/email/activity/bubblelayout/BubbleData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/activity/bubblelayout/BubbleData;->isFromContact()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/email/activity/bubblelayout/BubbleLayout$3;

    invoke-direct {v7, p0}, Lcom/android/email/activity/bubblelayout/BubbleLayout$3;-><init>(Lcom/android/email/activity/bubblelayout/BubbleLayout;)V

    invoke-virtual {v6, v4, v7}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleClickMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    :cond_2
    return-void

    :cond_3
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleData;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/provider/ContactsContract$Data;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0029

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public addButton(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/bubblelayout/BubbleButton;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleButton;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Lcom/android/email/activity/bubblelayout/BubbleButton;)Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addButton(Lcom/android/emailcommon/mail/Address;Z)Z
    .locals 5

    new-instance v0, Lcom/android/email/activity/bubblelayout/BubbleData;

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/activity/bubblelayout/BubbleData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0, p2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->makeOneBubbleButton(Landroid/content/Context;Lcom/android/email/activity/bubblelayout/BubbleData;Z)Lcom/android/email/activity/bubblelayout/BubbleButton;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Lcom/android/email/activity/bubblelayout/BubbleButton;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public addButton(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/email/activity/bubblelayout/BubbleData;

    invoke-direct {v1, p1}, Lcom/android/email/activity/bubblelayout/BubbleData;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, p2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->makeOneBubbleButton(Landroid/content/Context;Lcom/android/email/activity/bubblelayout/BubbleData;Z)Lcom/android/email/activity/bubblelayout/BubbleButton;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Lcom/android/email/activity/bubblelayout/BubbleButton;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public addButtonAfterDuplicateCheck(Ljava/lang/String;Z)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isDuplicatedAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f0805ea

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public deSelectLastButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public deleteSelectedLastButton()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->removeButton(I)Lcom/android/email/activity/bubblelayout/BubbleButton;

    :cond_0
    return-void
.end method

.method public getAddressesAsDelimiterType()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/bubblelayout/BubbleButton;

    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getBubbleData()Lcom/android/email/activity/bubblelayout/BubbleData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/bubblelayout/BubbleData;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getAddressesAsStringArray()[Ljava/lang/String;
    .locals 4

    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/bubblelayout/BubbleButton;

    invoke-virtual {v3}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getBubbleData()Lcom/android/email/activity/bubblelayout/BubbleData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/bubblelayout/BubbleData;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getBubbleListCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectedLastButton()Z
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleButton;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->isSelected()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidAddress()Z
    .locals 3

    iget-object v2, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleButton;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getBubbleData()Lcom/android/email/activity/bubblelayout/BubbleData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleData;->isValidAddress()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public makeOneBubbleButton(Landroid/content/Context;Lcom/android/email/activity/bubblelayout/BubbleData;)Lcom/android/email/activity/bubblelayout/BubbleButton;
    .locals 1

    invoke-virtual {p2}, Lcom/android/email/activity/bubblelayout/BubbleData;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isDuplicatedAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->makeOneBubbleButton(Landroid/content/Context;Lcom/android/email/activity/bubblelayout/BubbleData;Z)Lcom/android/email/activity/bubblelayout/BubbleButton;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized rebuildBubbleLayout(I)V
    .locals 8

    monitor-enter p0

    const/4 v5, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->makeOneLineLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleButton;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getExpectedWidth()I

    move-result v6

    add-int/2addr v5, v6

    if-lez p1, :cond_2

    move v4, p1

    :goto_3
    if-gt v5, v4, :cond_3

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getExpectedWidth()I

    move-result v6

    if-ne v5, v6, :cond_4

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->makeOneLineLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getExpectedWidth()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    goto :goto_2

    :cond_5
    monitor-exit p0

    return-void
.end method

.method public rebuildSummaryText(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mSummaryTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getSummaryText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public registerChildViewsFromOwnXML()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mSummaryTextView:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public registerMessageHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public removeAll()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->rebuildBubbleLayout(I)V

    invoke-virtual {p0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->rebuildSummaryText(I)V

    return-void
.end method

.method public removeButton(I)Lcom/android/email/activity/bubblelayout/BubbleButton;
    .locals 5

    :try_start_0
    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/bubblelayout/BubbleButton;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f050002

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v3, Lcom/android/email/activity/bubblelayout/BubbleLayout$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/bubblelayout/BubbleLayout$1;-><init>(Lcom/android/email/activity/bubblelayout/BubbleLayout;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v2, v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->rebuildBubbleLayout(I)V

    goto :goto_0
.end method

.method public selectLastButton()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleButton;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setSelected(Z)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExpectedLayoutWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mExpectedLayoutWidth:I

    return-void
.end method

.method public setViewMode(I)Z
    .locals 4

    const/16 v3, 0x8

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setVisibility(I)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mSummaryTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getSummaryText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateBubbleAfterSavingContact()Z
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/email/activity/bubblelayout/BubbleLayout;->mIndexOfSelectedBubbleByClickingButton:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleButton;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->refreshButton()V

    const/4 v0, 0x1

    return v0
.end method
