.class public Lcom/android/phone/OverturnTutorialIncallScreen;
.super Landroid/app/Activity;
.source "OverturnTutorialIncallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/OverturnTutorialIncallScreen$VibratorThread;
    }
.end annotation


# static fields
.field private static final mOverturnDrawable:[I


# instance fields
.field private InfoButton:Landroid/widget/ImageButton;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAnimationIndex:I

.field private mContinueRinging:Z

.field private mImgView:Landroid/widget/ImageView;

.field private mIsForegroundActivity:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mOkGoodJobDialog:Landroid/app/AlertDialog$Builder;

.field private mOverturnHandler:Landroid/os/Handler;

.field private mOverturnLayout:Landroid/view/View;

.field private mPreviousMsg:I

.field private mRingerType:Z

.field private mRingtone:Landroid/media/Ringtone;

.field private mTutorialDialogON:I

.field mVibrator:Landroid/os/Vibrator;

.field mVibratorThread:Lcom/android/phone/OverturnTutorialIncallScreen$VibratorThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/OverturnTutorialIncallScreen;->mOverturnDrawable:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x37t 0x3t 0x2t 0x7ft
        0x38t 0x3t 0x2t 0x7ft
        0x39t 0x3t 0x2t 0x7ft
        0x3at 0x3t 0x2t 0x7ft
        0x3bt 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mPreviousMsg:I

    iput v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mTutorialDialogON:I

    iput-boolean v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingerType:Z

    iput-boolean v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mContinueRinging:Z

    iput-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mOverturnLayout:Landroid/view/View;

    iput-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->InfoButton:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    iput-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mOkGoodJobDialog:Landroid/app/AlertDialog$Builder;

    iput-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    iput-boolean v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mIsForegroundActivity:Z

    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mVibrator:Landroid/os/Vibrator;

    new-instance v0, Lcom/android/phone/OverturnTutorialIncallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/OverturnTutorialIncallScreen$1;-><init>(Lcom/android/phone/OverturnTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/OverturnTutorialIncallScreen;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mPreviousMsg:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/OverturnTutorialIncallScreen;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mPreviousMsg:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/OverturnTutorialIncallScreen;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/OverturnTutorialIncallScreen;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/OverturnTutorialIncallScreen;->isForegroundActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/OverturnTutorialIncallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/phone/OverturnTutorialIncallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/OverturnTutorialIncallScreen;->startIncomingSound()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/OverturnTutorialIncallScreen;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAnimationIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/OverturnTutorialIncallScreen;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/OverturnTutorialIncallScreen;->updateAnimation(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/OverturnTutorialIncallScreen;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/OverturnTutorialIncallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/OverturnTutorialIncallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/OverturnTutorialIncallScreen;->stopAnimation()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/phone/OverturnTutorialIncallScreen;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mImgView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/phone/OverturnTutorialIncallScreen;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mTutorialDialogON:I

    return p1
.end method

.method private controlRing(Z)V
    .locals 4

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "OverturnTutorialIncallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playRingtones: failed to load ringtone from uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    goto :goto_0
.end method

.method private controlVibration()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/OverturnTutorialIncallScreen$VibratorThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/OverturnTutorialIncallScreen$VibratorThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/OverturnTutorialIncallScreen$VibratorThread;-><init>(Lcom/android/phone/OverturnTutorialIncallScreen;Lcom/android/phone/OverturnTutorialIncallScreen$1;)V

    iput-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/OverturnTutorialIncallScreen$VibratorThread;

    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vibrator Start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/OverturnTutorialIncallScreen$VibratorThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/OverturnTutorialIncallScreen$VibratorThread;

    invoke-virtual {v0}, Lcom/android/phone/OverturnTutorialIncallScreen$VibratorThread;->start()V

    :cond_0
    return-void
.end method

.method private isForegroundActivity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method private startAnimation()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "OverturnTutorialIncallScreen"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAnimationIndex:I

    invoke-direct {p0, v2}, Lcom/android/phone/OverturnTutorialIncallScreen;->updateAnimation(I)V

    :cond_0
    return-void
.end method

.method private startIncomingSound()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingerType:Z

    if-ne v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mContinueRinging:Z

    iget-boolean v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mContinueRinging:Z

    invoke-direct {p0, v0}, Lcom/android/phone/OverturnTutorialIncallScreen;->controlRing(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/OverturnTutorialIncallScreen;->controlVibration()V

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    const-string v0, "OverturnTutorialIncallScreen"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private stopRingingOrVibration()V
    .locals 3

    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop Ring or Vibration, mRingerType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingerType:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingerType:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mContinueRinging:Z

    iget-boolean v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mContinueRinging:Z

    invoke-direct {p0, v0}, Lcom/android/phone/OverturnTutorialIncallScreen;->controlRing(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/OverturnTutorialIncallScreen$VibratorThread;

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_0
.end method

.method private updateAnimation(I)V
    .locals 5

    const/16 v4, 0x14

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mImgView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/OverturnTutorialIncallScreen;->mOverturnDrawable:[I

    array-length v0, v1

    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mImgView:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/phone/OverturnTutorialIncallScreen;->mOverturnDrawable:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAnimationIndex:I

    if-lt v1, v0, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    invoke-direct {p0}, Lcom/android/phone/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    invoke-direct {p0}, Lcom/android/phone/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged(), mPreviousMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mPreviousMsg:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f04003b

    invoke-virtual {p0, v5}, Lcom/android/phone/OverturnTutorialIncallScreen;->setContentView(I)V

    const v5, 0x7f090167

    invoke-virtual {p0, v5}, Lcom/android/phone/OverturnTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    const v5, 0x7f090168

    invoke-virtual {p0, v5}, Lcom/android/phone/OverturnTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v5, Lcom/android/phone/OverturnTutorialIncallScreen$2;

    invoke-direct {v5, p0}, Lcom/android/phone/OverturnTutorialIncallScreen$2;-><init>(Lcom/android/phone/OverturnTutorialIncallScreen;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/phone/OverturnTutorialIncallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v5, 0x7f04002f

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090166

    invoke-virtual {p0, v5}, Lcom/android/phone/OverturnTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3, v7, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    const v5, 0x7f09013d

    invoke-virtual {p0, v5}, Lcom/android/phone/OverturnTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->InfoButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->InfoButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/android/phone/OverturnTutorialIncallScreen$3;

    invoke-direct {v6, p0}, Lcom/android/phone/OverturnTutorialIncallScreen$3;-><init>(Lcom/android/phone/OverturnTutorialIncallScreen;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v5, "motion_recognition"

    invoke-virtual {p0, v5}, Lcom/android/phone/OverturnTutorialIncallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v5, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    new-instance v5, Lcom/android/phone/OverturnTutorialIncallScreen$4;

    invoke-direct {v5, p0}, Lcom/android/phone/OverturnTutorialIncallScreen$4;-><init>(Lcom/android/phone/OverturnTutorialIncallScreen;)V

    iput-object v5, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v6, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;I)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9

    const/4 v8, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v8, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :goto_0
    iget-object v6, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v6

    :sswitch_0
    const-string v6, "OverturnTutorialIncallScreen"

    const-string v7, "Get in the SHOW_TUTORIAL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/OverturnTutorialIncallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "layout_inflater"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v6, 0x7f04000d

    invoke-virtual {v1, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v6, 0x7f09006b

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mImgView:Landroid/widget/ImageView;

    const v6, 0x7f09006a

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f0e049d

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0e049e

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/phone/OverturnTutorialIncallScreen$5;

    invoke-direct {v5, p0}, Lcom/android/phone/OverturnTutorialIncallScreen$5;-><init>(Lcom/android/phone/OverturnTutorialIncallScreen;)V

    const v6, 0x7f0e049f

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/android/phone/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    const/16 v6, 0x32

    iput v6, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mTutorialDialogON:I

    iget-object v6, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    invoke-direct {p0}, Lcom/android/phone/OverturnTutorialIncallScreen;->startAnimation()V

    iget-object v6, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/phone/OverturnTutorialIncallScreen$6;

    invoke-direct {v7, p0}, Lcom/android/phone/OverturnTutorialIncallScreen$6;-><init>(Lcom/android/phone/OverturnTutorialIncallScreen;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :sswitch_1
    const-string v6, "OverturnTutorialIncallScreen"

    const-string v7, "Get in the ShowOkGoodJob"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v6, 0x7f0e04a3

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0e04a2

    new-instance v8, Lcom/android/phone/OverturnTutorialIncallScreen$8;

    invoke-direct {v8, p0}, Lcom/android/phone/OverturnTutorialIncallScreen$8;-><init>(Lcom/android/phone/OverturnTutorialIncallScreen;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0e0180

    new-instance v8, Lcom/android/phone/OverturnTutorialIncallScreen$7;

    invoke-direct {v8, p0}, Lcom/android/phone/OverturnTutorialIncallScreen$7;-><init>(Lcom/android/phone/OverturnTutorialIncallScreen;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    iget-object v6, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/phone/OverturnTutorialIncallScreen$9;

    invoke-direct {v7, p0}, Lcom/android/phone/OverturnTutorialIncallScreen$9;-><init>(Lcom/android/phone/OverturnTutorialIncallScreen;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_0
        0x28 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "OverturnTutorialIncallScreen"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mIsForegroundActivity:Z

    invoke-direct {p0}, Lcom/android/phone/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume(), mPreviousMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mPreviousMsg:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mIsForegroundActivity:Z

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;I)V

    :cond_0
    iget v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mPreviousMsg:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mTutorialDialogON:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/OverturnTutorialIncallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "UseRing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingerType:Z

    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRingerType in onResume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/OverturnTutorialIncallScreen;->mRingerType:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/OverturnTutorialIncallScreen;->startIncomingSound()V

    :cond_1
    return-void
.end method
