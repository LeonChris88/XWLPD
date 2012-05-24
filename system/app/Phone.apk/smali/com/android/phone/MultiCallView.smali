.class public Lcom/android/phone/MultiCallView;
.super Landroid/widget/LinearLayout;
.source "MultiCallView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected mCM:Lcom/android/internal/telephony/CallManager;

.field protected mCallCardScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

.field protected mContext:Landroid/content/Context;

.field protected mFirstCallImageInfo:Landroid/widget/ImageView;

.field protected mFirstCallInfo:Landroid/view/View;

.field protected mFirstCallNameInfo:Landroid/widget/TextView;

.field protected mFirstCallNumberInfo:Landroid/widget/TextView;

.field protected mFirstCallTimeInfo:Landroid/widget/TextView;

.field protected mFirstCallTitleIcon:Landroid/widget/ImageView;

.field protected mFirstInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field protected mInCallScreen:Lcom/android/phone/InCallScreen;

.field protected mIsFirstCallInfoForeground:Z

.field protected mListBackgroundDisable:I

.field protected mListBackgroundNormal:I

.field protected mMergeButton:Landroid/widget/Button;

.field protected mRecInfo:Landroid/view/View;

.field protected mSecondCallImageInfo:Landroid/widget/ImageView;

.field protected mSecondCallInfo:Landroid/view/View;

.field protected mSecondCallNameInfo:Landroid/widget/TextView;

.field protected mSecondCallNumberInfo:Landroid/widget/TextView;

.field protected mSecondCallTimeInfo:Landroid/widget/TextView;

.field protected mSecondCallTitleIcon:Landroid/widget/ImageView;

.field protected mSwapButton:Landroid/widget/Button;

.field protected mTextColorGray:I

.field protected mTextColorWhite:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/android/phone/CallCard$CallCardScreenState;->PORTRAIT:Lcom/android/phone/CallCard$CallCardScreenState;

    iput-object v0, p0, Lcom/android/phone/MultiCallView;->mCallCardScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    iput-object p1, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private updateSipIcon(ZLcom/android/internal/telephony/Call;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallTitleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallTitleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallTitleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallTitleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected CallEndTimeBlink(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->isFirstCallInfoForground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstCallTimeInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstCallTimeInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mSecondCallTimeInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mSecondCallTimeInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected CallEndTimeBlink(Z)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->isFirstCallInfoForground()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/MultiCallView;->mFirstCallTimeInfo:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/phone/MultiCallView;->mSecondCallTimeInfo:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method protected fillCallerInfo(ZLcom/android/internal/telephony/Call;)V
    .locals 12

    const v8, 0x7f0e0028

    const v11, 0x7f020156

    const/4 v10, 0x1

    const/4 v7, 0x0

    const v9, 0x7f020157

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/phone/MultiCallView;->getCallerInfo(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v0, :cond_d

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    sget v5, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v4, v5, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/phone/MultiCallView;->getPresentationString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0007

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz p1, :cond_8

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallNameInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallNumberInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    const v8, 0x7f0e02fb

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setClickable(Z)V

    if-eqz v1, :cond_6

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MultiCallView;->updateSipIcon(ZLcom/android/internal/telephony/Call;)V

    return-void

    :cond_3
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget v5, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v4, v5, :cond_5

    invoke-virtual {p0, v4}, Lcom/android/phone/MultiCallView;->getPresentationString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    :cond_6
    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_8
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallNameInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    iget-object v6, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_9
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallNumberInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    const v8, 0x7f0e02fb

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_a
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setClickable(Z)V

    if-eqz v1, :cond_b

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_b
    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_c
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_d
    if-eqz p1, :cond_e

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallNameInfo:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/phone/MultiCallView;->getPresentationString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_1

    :cond_e
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallNameInfo:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/phone/MultiCallView;->getPresentationString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_1
.end method

.method protected getCallerInfo(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v1, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0
.end method

.method protected getPresentationString(I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0007

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0008

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0009

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method initialize(Lcom/android/phone/InCallScreen;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04002a

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x7f090113

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090119

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090114

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    const v1, 0x7f09011a

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    const v1, 0x7f090116

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallNameInfo:Landroid/widget/TextView;

    const v1, 0x7f09011c

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallNameInfo:Landroid/widget/TextView;

    const v1, 0x7f090117

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallNumberInfo:Landroid/widget/TextView;

    const v1, 0x7f09011d

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallNumberInfo:Landroid/widget/TextView;

    const v1, 0x7f090118

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallTimeInfo:Landroid/widget/TextView;

    const v1, 0x7f09011e

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallTimeInfo:Landroid/widget/TextView;

    const v1, 0x7f09011f

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mSwapButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090120

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mMergeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "support_conference_call"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mMergeButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    const v1, 0x7f090121

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mRecInfo:Landroid/view/View;

    const v1, 0x7f090115

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallTitleIcon:Landroid/widget/ImageView;

    const v1, 0x7f09011b

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallTitleIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/MultiCallView;->mTextColorWhite:I

    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/MultiCallView;->mTextColorGray:I

    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallTimeInfo:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/MultiCallView;->mTextColorWhite:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallTimeInfo:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/MultiCallView;->mTextColorWhite:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object p1, p0, Lcom/android/phone/MultiCallView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iput-boolean v3, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    const v1, 0x7f02016a

    iput v1, p0, Lcom/android/phone/MultiCallView;->mListBackgroundNormal:I

    const v1, 0x7f020169

    iput v1, p0, Lcom/android/phone/MultiCallView;->mListBackgroundDisable:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method isFirstCallInfoForground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MultiCallView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string v1, "MultiCallView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :sswitch_0
    iget-boolean v3, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    const v1, 0x7f090113

    if-ne v0, v1, :cond_0

    move v1, v2

    :goto_1
    if-ne v3, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    :goto_2
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f09010f

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    :cond_2
    const-string v1, "Nothing to do.."

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->log(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto :goto_2

    :sswitch_2
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x7f090113 -> :sswitch_0
        0x7f090119 -> :sswitch_0
        0x7f09011f -> :sswitch_1
        0x7f090120 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method

.method resetOriginalState()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setCallCardScreenState(Lcom/android/phone/CallCard$CallCardScreenState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/MultiCallView;->mCallCardScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    return-void
.end method

.method setFirstCallInfoForground(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setRecInfoViewVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mRecInfo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mRecInfo:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected updateElapsedTimeWidget(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->isFirstCallInfoForground()Z

    move-result v0

    iget-object v2, p0, Lcom/android/phone/MultiCallView;->mFirstCallTimeInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v1, p1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallTimeInfo:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    move-object v1, p2

    goto :goto_0

    :cond_1
    move-object p1, p2

    goto :goto_1
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 7

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/android/phone/MultiCallView;->setFirstCallInfoForground(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V

    iget-object v6, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/phone/MultiCallView;->mListBackgroundNormal:I

    :goto_1
    invoke-virtual {v6, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v6, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/phone/MultiCallView;->mListBackgroundNormal:I

    :goto_2
    invoke-virtual {v6, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v6, p0, Lcom/android/phone/MultiCallView;->mFirstCallNameInfo:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/phone/MultiCallView;->mTextColorWhite:I

    :goto_3
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/android/phone/MultiCallView;->mSecondCallNameInfo:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    if-nez v4, :cond_4

    iget v4, p0, Lcom/android/phone/MultiCallView;->mTextColorWhite:I

    :goto_4
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/android/phone/MultiCallView;->mFirstCallNumberInfo:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/phone/MultiCallView;->mTextColorWhite:I

    :goto_5
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/android/phone/MultiCallView;->mSecondCallNumberInfo:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    if-nez v4, :cond_6

    iget v4, p0, Lcom/android/phone/MultiCallView;->mTextColorWhite:I

    :goto_6
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v4, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    invoke-virtual {p0, v4, v2}, Lcom/android/phone/MultiCallView;->fillCallerInfo(ZLcom/android/internal/telephony/Call;)V

    iget-boolean v4, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    if-nez v4, :cond_7

    move v4, v5

    :goto_7
    invoke-virtual {p0, v4, v0}, Lcom/android/phone/MultiCallView;->fillCallerInfo(ZLcom/android/internal/telephony/Call;)V

    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iput-object p1, p0, Lcom/android/phone/MultiCallView;->mCM:Lcom/android/internal/telephony/CallManager;

    return-void

    :cond_1
    iget v4, p0, Lcom/android/phone/MultiCallView;->mListBackgroundDisable:I

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/android/phone/MultiCallView;->mListBackgroundDisable:I

    goto :goto_2

    :cond_3
    iget v4, p0, Lcom/android/phone/MultiCallView;->mTextColorGray:I

    goto :goto_3

    :cond_4
    iget v4, p0, Lcom/android/phone/MultiCallView;->mTextColorGray:I

    goto :goto_4

    :cond_5
    iget v4, p0, Lcom/android/phone/MultiCallView;->mTextColorGray:I

    goto :goto_5

    :cond_6
    iget v4, p0, Lcom/android/phone/MultiCallView;->mTextColorGray:I

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    goto :goto_7
.end method
