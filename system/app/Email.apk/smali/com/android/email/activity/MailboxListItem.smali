.class public Lcom/android/email/activity/MailboxListItem;
.super Landroid/widget/RelativeLayout;
.source "MailboxListItem.java"


# static fields
.field private static sDropAvailableBgColor:Ljava/lang/Integer;

.field private static sDropUnavailableBgDrawable:Landroid/graphics/drawable/Drawable;

.field private static sDropUnavailableFgColor:Ljava/lang/Integer;

.field private static sImageHitWidth:I

.field private static sTextCountColorDarkTheme:Ljava/lang/Integer;

.field private static sTextCountColorWhiteTheme:Ljava/lang/Integer;

.field private static sTextCountSelectedColorDarkTheme:Ljava/lang/Integer;

.field private static sTextCountSelectedColorWhiteTheme:Ljava/lang/Integer;

.field private static sTextMailboxColorDarkTheme:Ljava/lang/Integer;

.field private static sTextMailboxColorWhiteTheme:Ljava/lang/Integer;

.field private static sTextMailboxDisableColorDarkTheme:Ljava/lang/Integer;

.field private static sTextMailboxDisableColorWhiteTheme:Ljava/lang/Integer;

.field private static sTextMailboxSelectedColorDarkTheme:Ljava/lang/Integer;

.field private static sTextMailboxSelectedColorWhiteTheme:Ljava/lang/Integer;


# instance fields
.field public mAdapter:Lcom/android/email/activity/MailboxesAdapter;

.field public mBackgroundColor:I

.field private mCachedViewPositions:Z

.field public mCountBackground:Landroid/widget/ImageView;

.field private mDownEvent:Z

.field public mDragImpossibleIcon:Landroid/widget/ImageView;

.field public mFactor:I

.field public mFlagNoSelected:I

.field public mFolderIcon:Landroid/widget/ImageView;

.field public mHasChild:I

.field public mIsChecked:Z

.field public mIsSelected:Z

.field private mLabelCount:Landroid/widget/TextView;

.field private mLabelName:Landroid/widget/TextView;

.field public mMailboxId:J

.field public mMailboxType:Ljava/lang/Integer;

.field public mNameText:Ljava/lang/String;

.field public mNameView:Landroid/widget/TextView;

.field public mNameViewWidth:I

.field public mSelectedIconVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListItem;->mIsChecked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListItem;->mIsChecked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListItem;->mIsChecked:Z

    return-void
.end method

.method private getmFormattedName(I)Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lcom/android/email/activity/MailboxListItem;->mNameText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/MailboxListItem;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/MailboxListItem;->mNameViewWidth:I

    sub-int/2addr v2, p1

    int-to-float v2, v2

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindViewInit(Lcom/android/email/activity/MailboxesAdapter;)V
    .locals 1

    iput-object p1, p0, Lcom/android/email/activity/MailboxListItem;->mAdapter:Lcom/android/email/activity/MailboxesAdapter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListItem;->mCachedViewPositions:Z

    return-void
.end method

.method public isDropTarget(J)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-boolean v2, Lcom/android/email/activity/MessageView;->isSms:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->VALID_SMS_DROP_TARGET:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->INVALID_DROP_TARGETS:[Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    sget-object v1, Lcom/android/email/activity/MailboxListItem;->sDropAvailableBgColor:Ljava/lang/Integer;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sDropAvailableBgColor:Ljava/lang/Integer;

    const v1, 0x7f02031e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sDropUnavailableBgDrawable:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sDropUnavailableFgColor:Ljava/lang/Integer;

    const v1, 0x7f0b004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sTextMailboxColorWhiteTheme:Ljava/lang/Integer;

    const v1, 0x7f0b004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sTextCountColorWhiteTheme:Ljava/lang/Integer;

    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sTextMailboxSelectedColorWhiteTheme:Ljava/lang/Integer;

    const v1, 0x7f0b0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sTextMailboxDisableColorWhiteTheme:Ljava/lang/Integer;

    const v1, 0x7f0b0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sTextCountSelectedColorWhiteTheme:Ljava/lang/Integer;

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sTextMailboxColorDarkTheme:Ljava/lang/Integer;

    const v1, 0x7f0b0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sTextCountColorDarkTheme:Ljava/lang/Integer;

    const v1, 0x7f0b0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sTextMailboxSelectedColorDarkTheme:Ljava/lang/Integer;

    const v1, 0x7f0b005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sTextMailboxDisableColorDarkTheme:Ljava/lang/Integer;

    const v1, 0x7f0b0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sTextCountSelectedColorDarkTheme:Ljava/lang/Integer;

    :cond_0
    const v1, 0x7f0c001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxListItem;->sImageHitWidth:I

    :cond_1
    const v1, 0x7f100159

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/MailboxListItem;->mLabelName:Landroid/widget/TextView;

    const v1, 0x7f10015c

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/MailboxListItem;->mLabelCount:Landroid/widget/TextView;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v3, v4

    sget v4, Lcom/android/email/activity/MailboxListItem;->sImageHitWidth:I

    iget v5, p0, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    add-int v2, v4, v5

    iget v1, p0, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    iget-boolean v4, p0, Lcom/android/email/activity/MailboxListItem;->mCachedViewPositions:Z

    if-nez v4, :cond_0

    iput-boolean v6, p0, Lcom/android/email/activity/MailboxListItem;->mCachedViewPositions:Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListItem;->invalidate()V

    :goto_1
    return v0

    :pswitch_1
    if-ge v3, v2, :cond_2

    if-le v3, v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v6, p0, Lcom/android/email/activity/MailboxListItem;->mDownEvent:Z

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/email/activity/MailboxListItem;->mFlagNoSelected:I

    if-ne v4, v6, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    iput-boolean v7, p0, Lcom/android/email/activity/MailboxListItem;->mDownEvent:Z

    goto :goto_0

    :pswitch_3
    iget-boolean v4, p0, Lcom/android/email/activity/MailboxListItem;->mDownEvent:Z

    if-eqz v4, :cond_3

    if-ge v3, v2, :cond_3

    if-le v3, v1, :cond_3

    const/4 v0, 0x1

    iget v4, p0, Lcom/android/email/activity/MailboxListItem;->mHasChild:I

    if-ne v4, v6, :cond_1

    invoke-virtual {p0, v7}, Lcom/android/email/activity/MailboxListItem;->playSoundEffect(I)V

    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget-wide v5, p0, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    invoke-virtual {v4, v5, v6}, Lcom/android/email/activity/MailboxesAdapter;->updateMailboxVisivility(J)V

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/android/email/activity/MailboxListItem;->mFlagNoSelected:I

    if-ne v4, v6, :cond_4

    const/4 v0, 0x1

    :cond_4
    iput-boolean v7, p0, Lcom/android/email/activity/MailboxListItem;->mDownEvent:Z

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setDropTargetBackground(ZJ)V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/16 v6, 0xff

    iget v4, p0, Lcom/android/email/activity/MailboxListItem;->mFlagNoSelected:I

    if-ne v4, v8, :cond_4

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/email/activity/MailboxListItem;->mBackgroundColor:I

    if-ne v4, v7, :cond_3

    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sTextMailboxDisableColorDarkTheme:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sTextMailboxDisableColorDarkTheme:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mDragImpossibleIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mDragImpossibleIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/email/activity/MailboxListItem;->mSelectedIconVisibility:I

    if-nez v4, :cond_8

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mDragImpossibleIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz p1, :cond_b

    invoke-virtual {p0, p2, p3}, Lcom/android/email/activity/MailboxListItem;->isDropTarget(J)Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/android/email/activity/MailboxListItem;->mFlagNoSelected:I

    if-eq v4, v8, :cond_9

    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mDragImpossibleIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mDragImpossibleIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mFolderIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mFolderIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mCountBackground:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mLabelName:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mLabelCount:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_3
    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sTextMailboxDisableColorWhiteTheme:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sTextMailboxDisableColorWhiteTheme:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_4
    iget-boolean v4, p0, Lcom/android/email/activity/MailboxListItem;->mIsSelected:Z

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/email/activity/MailboxListItem;->mBackgroundColor:I

    if-ne v4, v7, :cond_5

    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sTextMailboxSelectedColorDarkTheme:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sTextCountSelectedColorDarkTheme:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_5
    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sTextMailboxSelectedColorWhiteTheme:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sTextCountSelectedColorWhiteTheme:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/android/email/activity/MailboxListItem;->mBackgroundColor:I

    if-ne v4, v7, :cond_7

    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sTextMailboxColorDarkTheme:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sTextCountColorDarkTheme:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_0

    :cond_7
    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sTextMailboxColorWhiteTheme:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sTextCountColorWhiteTheme:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_0

    :cond_8
    const/16 v4, 0xe

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v3, 0xe

    goto/16 :goto_1

    :cond_9
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mDragImpossibleIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mDragImpossibleIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mNameView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/email/activity/MailboxListItem;->mDragImpossibleIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-direct {p0, v5}, Lcom/android/email/activity/MailboxListItem;->getmFormattedName(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sDropUnavailableBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sDropUnavailableFgColor:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sDropUnavailableFgColor:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mFolderIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mFolderIcon:Landroid/widget/ImageView;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mCountBackground:Landroid/widget/ImageView;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    goto/16 :goto_2

    :cond_b
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mDragImpossibleIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mDragImpossibleIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mNameView:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lcom/android/email/activity/MailboxListItem;->getmFormattedName(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mFolderIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mFolderIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mCountBackground:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    goto/16 :goto_2
.end method
