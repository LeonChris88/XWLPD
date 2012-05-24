.class public Lcom/android/phone/MultiCallLargeView;
.super Lcom/android/phone/MultiCallView;
.source "MultiCallLargeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field protected mMultiCallInfoLandLayout:Landroid/widget/LinearLayout;

.field protected mMultiCallInfoPortLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/MultiCallView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private linkControls(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f090119

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f090114

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    const v0, 0x7f09011a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    const v0, 0x7f090116

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstCallNameInfo:Landroid/widget/TextView;

    const v0, 0x7f09011c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MultiCallView;->mSecondCallNameInfo:Landroid/widget/TextView;

    const v0, 0x7f090117

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstCallNumberInfo:Landroid/widget/TextView;

    const v0, 0x7f09011d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MultiCallView;->mSecondCallNumberInfo:Landroid/widget/TextView;

    const v0, 0x7f090118

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstCallTimeInfo:Landroid/widget/TextView;

    const v0, 0x7f09011e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MultiCallView;->mSecondCallTimeInfo:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected fillCallerInfo(ZLcom/android/internal/telephony/Call;)V
    .locals 12

    const v11, 0x7f0e02fb

    const v10, 0x7f0e0028

    const/4 v5, 0x1

    const v9, 0x7f020157

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/MultiCallLargeView;->getCallerInfo(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v0, :cond_d

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v7, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    sget v7, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v4, v7, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/phone/MultiCallLargeView;->getPresentationString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MultiCallLargeView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0e0007

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz p1, :cond_9

    iget-object v7, p0, Lcom/android/phone/MultiCallView;->mFirstCallNameInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v8, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/phone/MultiCallView;->mFirstCallNumberInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    if-eqz v1, :cond_6

    :goto_1
    invoke-virtual {v7, v5}, Landroid/view/View;->setClickable(Z)V

    if-eqz v1, :cond_7

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    const v6, 0x7f020152

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    return-void

    :cond_3
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget v7, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v4, v7, :cond_5

    invoke-virtual {p0, v4}, Lcom/android/phone/MultiCallLargeView;->getPresentationString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    :cond_6
    move v5, v6

    goto :goto_1

    :cond_7
    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_8
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    const v6, 0x7f020154

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_9
    if-eqz v1, :cond_a

    iget-object v7, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    const v8, 0x7f020153

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    if-eqz v1, :cond_c

    iget-object v7, p0, Lcom/android/phone/MultiCallView;->mSecondCallNumberInfo:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/phone/MultiCallView;->mSecondCallNameInfo:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/phone/MultiCallView;->mSecondCallNumberInfo:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setClickable(Z)V

    goto :goto_2

    :cond_a
    iget-object v7, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_b
    iget-object v7, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_c
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallNameInfo:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallNumberInfo:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_2

    :cond_d
    if-eqz p1, :cond_e

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallNameInfo:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/phone/MultiCallLargeView;->getPresentationString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_2

    :cond_e
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallNameInfo:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/phone/MultiCallLargeView;->getPresentationString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_2
.end method

.method initialize(Lcom/android/phone/InCallScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/phone/MultiCallView;->initialize(Lcom/android/phone/InCallScreen;)V

    const v0, 0x7f090122

    invoke-virtual {p0, v0}, Lcom/android/phone/MultiCallLargeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/MultiCallLargeView;->mMultiCallInfoPortLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090123

    invoke-virtual {p0, v0}, Lcom/android/phone/MultiCallLargeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/MultiCallLargeView;->mMultiCallInfoLandLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method setFirstCallInfoForground(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 9

    const/16 v8, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

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
    invoke-virtual {p0, v2, v0}, Lcom/android/phone/MultiCallLargeView;->setFirstCallInfoForground(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V

    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mCallCardScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    sget-object v7, Lcom/android/phone/CallCard$CallCardScreenState;->PORTRAIT:Lcom/android/phone/CallCard$CallCardScreenState;

    if-ne v4, v7, :cond_1

    iget-object v4, p0, Lcom/android/phone/MultiCallLargeView;->mMultiCallInfoPortLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v4}, Lcom/android/phone/MultiCallLargeView;->linkControls(Landroid/view/View;)V

    :goto_1
    iget-boolean v4, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    invoke-virtual {p0, v4, v2}, Lcom/android/phone/MultiCallLargeView;->fillCallerInfo(ZLcom/android/internal/telephony/Call;)V

    iget-boolean v4, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    if-nez v4, :cond_2

    move v4, v5

    :goto_2
    invoke-virtual {p0, v4, v0}, Lcom/android/phone/MultiCallLargeView;->fillCallerInfo(ZLcom/android/internal/telephony/Call;)V

    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iput-object p1, p0, Lcom/android/phone/MultiCallView;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mCallCardScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    sget-object v5, Lcom/android/phone/CallCard$CallCardScreenState;->PORTRAIT:Lcom/android/phone/CallCard$CallCardScreenState;

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/phone/MultiCallLargeView;->mMultiCallInfoPortLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/phone/MultiCallLargeView;->mMultiCallInfoLandLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/phone/MultiCallLargeView;->mMultiCallInfoLandLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v4}, Lcom/android/phone/MultiCallLargeView;->linkControls(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    move v4, v6

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/android/phone/MultiCallLargeView;->mMultiCallInfoPortLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/phone/MultiCallLargeView;->mMultiCallInfoLandLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3
.end method
