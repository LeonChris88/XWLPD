.class public Lcom/android/phone/IncomingSlidingWidget;
.super Landroid/widget/RelativeLayout;
.source "IncomingSlidingWidget.java"

# interfaces
.implements Lcom/android/phone/IncomingCallWidget$OnTriggerListener;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

.field public mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

.field private mLastIncomingCallActionTime:J

.field private mOrientation:I

.field public mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

.field private mRejectCallWithMsgHandle:Landroid/widget/Button;

.field private mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

.field private mSlidingTabAnim:Landroid/view/animation/AlphaAnimation;

.field private mVoipInUseMsg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object p1, p0, Lcom/android/phone/IncomingSlidingWidget;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mOrientation:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/IncomingSlidingWidget;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgHandle:Landroid/widget/Button;

    return-object v0
.end method

.method private hideIncomingCallWidget()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mSlidingTabAnim:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_2

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mSlidingTabAnim:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mSlidingTabAnim:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mSlidingTabAnim:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/phone/IncomingSlidingWidget$3;

    invoke-direct {v1, p0}, Lcom/android/phone/IncomingSlidingWidget$3;-><init>(Lcom/android/phone/IncomingSlidingWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mSlidingTabAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private linkControls()V
    .locals 5

    const v0, 0x7f09010d

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingCallWidget;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    const v1, 0x7f0202ba

    const v2, 0x7f02032a

    const v3, 0x7f020316

    const v4, 0x7f02031e

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/IncomingCallWidget;->setLeftTabResources(IIII)V

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    const v1, 0x7f0202bd

    const v2, 0x7f02032b

    const v3, 0x7f02031a

    const v4, 0x7f020327

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/IncomingCallWidget;->setRightTabResources(IIII)V

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    const v1, 0x7f0e02eb

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget;->setLeftHintText(I)V

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    const v1, 0x7f0e02e9

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget;->setRightHintText(I)V

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0, p0}, Lcom/android/phone/IncomingCallWidget;->setOnTriggerListener(Lcom/android/phone/IncomingCallWidget$OnTriggerListener;)V

    const v0, 0x7f09015a

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    const v0, 0x7f09015d

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgHandle:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/android/phone/IncomingSlidingWidget$1;

    invoke-direct {v1, p0}, Lcom/android/phone/IncomingSlidingWidget$1;-><init>(Lcom/android/phone/IncomingSlidingWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/android/phone/IncomingSlidingWidget$2;

    invoke-direct {v1, p0}, Lcom/android/phone/IncomingSlidingWidget$2;-><init>(Lcom/android/phone/IncomingSlidingWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    const v0, 0x7f09015c

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/RejectCallWithMsgLayout;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

    const v0, 0x7f09010e

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mVoipInUseMsg:Landroid/widget/TextView;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "IncomingSlidingWidget"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showIncomingCallWidget()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget;->clearAnimation()V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mVoipInUseMsg:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method initialize(Ljava/lang/Object;)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040028

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->linkControls()V

    instance-of v1, p1, Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/phone/InCallScreen;

    iput-object p1, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, p1, Lcom/android/phone/InVTCallScreen;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/phone/InVTCallScreen;

    iput-object p1, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4

    const v3, 0x7f090018

    const v2, 0x7f090017

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialTrigger(whichHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    const-string v0, "IncomingSlidingWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialTrigger: unexpected whichHandle value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->hideIncomingCallWidget()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mLastIncomingCallActionTime:J

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    :cond_1
    const-string v0, "IncomingSlidingWidget"

    const-string v1, "answer trigger: mInCallScreen and mInVTCallScreen is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->hideIncomingCallWidget()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mLastIncomingCallActionTime:J

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InVTCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    :cond_3
    const-string v0, "IncomingSlidingWidget"

    const-string v1, "answer trigger: mInCallScreen and mInVTCallScreen is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setVisibility(I)V
    .locals 5

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->showIncomingCallWidget()V

    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v1, v3, :cond_0

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v1, v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    :goto_0
    const-string v3, "IncomingSlidingWidget show"

    invoke-direct {p0, v3}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->hideIncomingCallWidget()V

    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v3}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v3}, Landroid/widget/SlidingDrawer;->toggle()V

    :cond_3
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    const-string v3, "IncomingSlidingWidget gone"

    invoke-direct {p0, v3}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;I)V
    .locals 4

    iget v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mOrientation:I

    if-eq v3, p2, :cond_0

    iput p2, p0, Lcom/android/phone/IncomingSlidingWidget;->mOrientation:I

    :cond_0
    iput-object p1, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-virtual {v3, v2}, Lcom/android/phone/RejectCallWithMsgLayout;->setPhoneNumber(Ljava/lang/String;)V

    const-string v3, "cdnip_supplementary_service"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCdnipNumber()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-virtual {v3, v1}, Lcom/android/phone/RejectCallWithMsgLayout;->setCdnipNumber(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-virtual {v3, p1}, Lcom/android/phone/RejectCallWithMsgLayout;->setPhone(Lcom/android/internal/telephony/CallManager;)V

    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-virtual {v3}, Lcom/android/phone/RejectCallWithMsgLayout;->updateItemList()V

    return-void
.end method
