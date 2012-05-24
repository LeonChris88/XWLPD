.class public Lcom/android/email/variant/NotificationController;
.super Ljava/lang/Object;
.source "NotificationController.java"


# static fields
.field private static final sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private alertOnCallMode:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mClock:Lcom/android/email/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mGenericSenderIcon:Landroid/graphics/Bitmap;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private ringtoneUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/email/variant/NotificationController;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/email/Clock;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/email/variant/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/email/variant/NotificationController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020196

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/variant/NotificationController;->mGenericSenderIcon:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/android/email/variant/NotificationController;->mClock:Lcom/android/email/Clock;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/variant/NotificationController;J)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/email/variant/NotificationController;->getNewMessageNotificationId(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/email/variant/NotificationController;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/variant/NotificationController;J)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/email/variant/NotificationController;->getSendingFailNotificationId(J)I

    move-result v0

    return v0
.end method

.method private getLoginFailedNotificationId(J)I
    .locals 2

    const/high16 v0, 0x2000

    long-to-int v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method private getNewMessageNotificationId(J)I
    .locals 2

    const-wide/32 v0, 0x10000000

    add-long/2addr v0, p1

    long-to-int v0, v0

    return v0
.end method

.method private getSenderPhoto(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/email/activity/ContactStatusLoader;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/activity/ContactStatusLoader$Result;

    move-result-object v2

    iget-object v2, v2, Lcom/android/email/activity/ContactStatusLoader$Result;->mPhoto:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private getSendingFailNotificationId(J)I
    .locals 2

    const-wide/32 v0, 0x30000000

    add-long/2addr v0, p1

    long-to-int v0, v0

    return v0
.end method

.method private isOnCall()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "Email::NotificationController"

    const-string v4, "Null Pointer Exception set isOnCall as false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private makeAlertSoundOnCall()V
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/email/variant/NotificationController;->ringtoneUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/email/variant/NotificationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/variant/NotificationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/email/variant/NotificationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/android/email/variant/NotificationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/email/variant/NotificationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/variant/NotificationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v2, p0, Lcom/android/email/variant/NotificationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/android/email/variant/NotificationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v2, p0, Lcom/android/email/variant/NotificationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v2}, Lcom/android/email/variant/NotificationController;->setVolume(Landroid/media/MediaPlayer;)V

    iget-object v2, p0, Lcom/android/email/variant/NotificationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/email/variant/NotificationController;->ringtoneUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Email::NotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeAlertSound() cated Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static rewriteForPendingIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "email-dummy"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    sget-object v1, Lcom/android/email/variant/NotificationController;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setVolume(Landroid/media/MediaPlayer;)V
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/high16 v1, -0x4080

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    int-to-float v1, v2

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    const v2, 0x3f19999a

    mul-float/2addr v1, v2

    const-string v2, "Email::NotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeAlertSoundOnCall() - am.getStreamVolume() volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method


# virtual methods
.method public cancelLoginFailedNotification(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1, p2}, Lcom/android/email/variant/NotificationController;->getLoginFailedNotificationId(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public cancelNewMessageNotification(J)V
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/email/variant/NotificationController$1;

    iget-object v1, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/email/variant/NotificationController$1;-><init>(Lcom/android/email/variant/NotificationController;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/variant/NotificationController$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1, p2}, Lcom/android/email/variant/NotificationController;->getNewMessageNotificationId(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1, p2}, Lcom/android/email/variant/NotificationController;->getSendingFailNotificationId(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public cancelNotification(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method createNewMessageNotification(JI)Landroid/app/Notification;
    .locals 12

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v8, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v8, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Message;->getLatestIncomingMessage(Landroid/content/Context;Ljava/lang/Long;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v8, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v8

    invoke-static {v8}, Lcom/android/emailcommon/mail/Address;->toFriendly([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/email/variant/NotificationController;->getSenderPhoto(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v8, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    long-to-int v9, p1

    iget-object v10, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v10, p1, p2}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v10

    const/high16 v11, 0x800

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0202aa

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/variant/NotificationController;->mClock:Lcom/android/email/Clock;

    invoke-virtual {v9}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v8

    if-eqz v6, :cond_3

    :goto_1
    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v5, v9}, Lcom/android/email/variant/NotificationController;->getNotificationTitle(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v8, 0x1

    if-le p3, v8, :cond_2

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    :cond_2
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lcom/android/email/variant/NotificationController;->setupNotificationSoundAndVibrationFromAccount(Landroid/app/Notification;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/email/variant/NotificationController;->mGenericSenderIcon:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method createSendFailNotification(JJ)Landroid/app/Notification;
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    if-nez v5, :cond_0

    const/16 v16, 0x0

    :goto_0
    return-object v16

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v13

    if-nez v13, :cond_1

    const/16 v16, 0x0

    goto :goto_0

    :cond_1
    iget-object v8, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    iget-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/mail/Address;->toFriendly([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_2

    const-string v18, ""

    :cond_2
    iget-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-wide v14, v13, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v6, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iget-object v12, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    iget-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v17

    const/16 v20, 0x0

    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v20

    iget-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    iget-wide v0, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    move-wide/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/activity/Welcome;->createOpenAccountMailboxIntent(Landroid/content/Context;JJ)Landroid/content/Intent;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/email/variant/NotificationController;->rewriteForPendingIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v21 .. v24}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    new-instance v9, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const v21, 0x7f0202aa

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f08050b

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f080554

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "(\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v11, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Lcom/android/email/variant/NotificationController;->setupNotificationSoundAndVibrationFromAccount(Landroid/app/Notification;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto/16 :goto_0

    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method getNotificationTitle(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    if-ne v0, v6, :cond_0

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    return-object v2

    :cond_0
    iget-object v4, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080093

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v4, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0007

    invoke-direct {v1, v4, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v2, v1, v4, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method getRingerMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    return v0
.end method

.method isRingerModeSilent()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/email/variant/NotificationController;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postAccountNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 13

    const/4 v5, 0x0

    if-eqz p5, :cond_0

    invoke-static/range {p5 .. p5}, Lcom/android/email/variant/NotificationController;->rewriteForPendingIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p5

    iget-object v10, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/high16 v12, 0x800

    move-object/from16 v0, p5

    invoke-static {v10, v11, v0, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    :cond_0
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getRingtone()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    const/4 v6, 0x0

    :goto_0
    iget v10, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_4

    const/4 v8, 0x1

    :goto_1
    iget v10, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v10, v10, 0x40

    if-eqz v10, :cond_5

    const/4 v9, 0x1

    :goto_2
    iget-object v10, p0, Lcom/android/email/variant/NotificationController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v10}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    const/4 v4, 0x1

    :goto_3
    const/4 v1, 0x4

    if-nez v8, :cond_1

    if-eqz v9, :cond_2

    if-eqz v4, :cond_2

    :cond_1
    or-int/lit8 v1, v1, 0x2

    :cond_2
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0202aa

    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v10, p0, Lcom/android/email/variant/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    move/from16 v0, p6

    invoke-virtual {v10, v0, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_3
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    goto :goto_3
.end method

.method setupNotificationSoundAndVibrationFromAccount(Landroid/app/Notification;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v0, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_3

    move v1, v3

    :goto_0
    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iget-object v4, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/email/variant/NotificationController;->ringtoneUri:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "alertoncall_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/email/variant/NotificationController;->alertOnCallMode:I

    invoke-direct {p0}, Lcom/android/email/variant/NotificationController;->isOnCall()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/email/variant/NotificationController;->alertOnCallMode:I

    if-ne v4, v3, :cond_4

    invoke-direct {p0}, Lcom/android/email/variant/NotificationController;->makeAlertSoundOnCall()V

    :goto_1
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/email/variant/NotificationController;->isRingerModeSilent()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget v3, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p1, Landroid/app/Notification;->defaults:I

    :cond_2
    iget v3, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p1, Landroid/app/Notification;->flags:I

    return-void

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/email/variant/NotificationController;->ringtoneUri:Ljava/lang/String;

    if-nez v3, :cond_5

    const/4 v3, 0x0

    :goto_2
    iput-object v3, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/email/variant/NotificationController;->ringtoneUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_2
.end method

.method public showDownloadForwardFailedNotification(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 7

    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    const v2, 0x7f0800c6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    const v3, 0x7f0800c7

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/variant/NotificationController;->postAccountNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public showLoginFailedNotification(J)V
    .locals 7

    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    const v2, 0x7f0800c9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    const v3, 0x7f0800ca

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-static {v0, p1, p2, v5}, Lcom/android/email/activity/setup/AccountSettingsXL;->createAccountSettingsIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, p1, p2}, Lcom/android/email/variant/NotificationController;->getLoginFailedNotificationId(J)I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/variant/NotificationController;->postAccountNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public showNewMessageNotification(JII)V
    .locals 1

    new-instance v0, Lcom/android/email/variant/NotificationController$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/variant/NotificationController$2;-><init>(Lcom/android/email/variant/NotificationController;JI)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    return-void
.end method

.method public showSendFailedNotification(JJI)V
    .locals 6

    new-instance v0, Lcom/android/email/variant/NotificationController$3;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/variant/NotificationController$3;-><init>(Lcom/android/email/variant/NotificationController;JJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    return-void
.end method
