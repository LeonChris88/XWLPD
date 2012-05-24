.class public Lcom/android/phone/DataUsageListener;
.super Ljava/lang/Object;
.source "DataUsageListener.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentThrottleRate:I

.field private mCurrentUsagePref:Landroid/preference/Preference;

.field private mDataUsed:J

.field private mEnd:Ljava/util/Calendar;

.field private mFilter:Landroid/content/IntentFilter;

.field private mPolicyThreshold:J

.field private mPolicyThrottleValue:I

.field private mPrefScreen:Landroid/preference/PreferenceScreen;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStart:Ljava/util/Calendar;

.field private mSummaryPref:Landroid/preference/Preference;

.field private mSummaryPrefEnabled:Z

.field private mThrottleManager:Landroid/net/ThrottleManager;

.field private mThrottleRatePref:Landroid/preference/Preference;

.field private mTimeFramePref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mCurrentUsagePref:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mTimeFramePref:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mThrottleRatePref:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/DataUsageListener;->mSummaryPrefEnabled:Z

    iput-object p1, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/DataUsageListener;->mCurrentUsagePref:Landroid/preference/Preference;

    iput-object p3, p0, Lcom/android/phone/DataUsageListener;->mTimeFramePref:Landroid/preference/Preference;

    iput-object p4, p0, Lcom/android/phone/DataUsageListener;->mThrottleRatePref:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/phone/DataUsageListener;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mCurrentUsagePref:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mTimeFramePref:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mThrottleRatePref:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/DataUsageListener;->mSummaryPrefEnabled:Z

    iput-object p1, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    iput-object p3, p0, Lcom/android/phone/DataUsageListener;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/DataUsageListener;->mSummaryPrefEnabled:Z

    invoke-direct {p0}, Lcom/android/phone/DataUsageListener;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DataUsageListener;JJJJ)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/phone/DataUsageListener;->updateUsageStats(JJJJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/DataUsageListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/DataUsageListener;->updatePolicy()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/DataUsageListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/DataUsageListener;->updateThrottleRate(I)V

    return-void
.end method

.method private initialize()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    const-string v1, "throttle"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ThrottleManager;

    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mThrottleManager:Landroid/net/ThrottleManager;

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mStart:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mEnd:Ljava/util/Calendar;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.thrott.POLL_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.thrott.THROTTLE_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.thrott.POLICY_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/android/phone/DataUsageListener$1;

    invoke-direct {v0, p0}, Lcom/android/phone/DataUsageListener$1;-><init>(Lcom/android/phone/DataUsageListener;)V

    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private toReadable(J)Ljava/lang/String;
    .locals 12

    const-wide/16 v9, 0x400

    const-wide/16 v2, 0x400

    mul-long v4, v9, v2

    mul-long v0, v9, v4

    mul-long v6, v9, v0

    cmp-long v9, p1, v2

    if-gez v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_0
    return-object v8

    :cond_0
    cmp-long v9, p1, v4

    if-gez v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    div-long v10, p1, v2

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_1
    cmp-long v9, p1, v0

    if-gez v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    div-long v10, p1, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " MB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_2
    cmp-long v9, p1, v6

    if-gez v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    div-long v10, p1, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " GB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    div-long v10, p1, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " TB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method private updatePolicy()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mThrottleManager:Landroid/net/ThrottleManager;

    invoke-virtual {v0, v5, v4}, Landroid/net/ThrottleManager;->getCliffThreshold(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/DataUsageListener;->mPolicyThreshold:J

    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/phone/DataUsageListener;->mPolicyThreshold:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/DataUsageListener;->mSummaryPrefEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/DataUsageListener;->mSummaryPrefEnabled:Z

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/DataUsageListener;->updateUI()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mThrottleManager:Landroid/net/ThrottleManager;

    invoke-virtual {v0, v5, v4}, Landroid/net/ThrottleManager;->getCliffLevel(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/DataUsageListener;->mPolicyThrottleValue:I

    iget-boolean v0, p0, Lcom/android/phone/DataUsageListener;->mSummaryPrefEnabled:Z

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lcom/android/phone/DataUsageListener;->mSummaryPrefEnabled:Z

    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateThrottleRate(I)V
    .locals 0

    iput p1, p0, Lcom/android/phone/DataUsageListener;->mCurrentThrottleRate:I

    invoke-direct {p0}, Lcom/android/phone/DataUsageListener;->updateUI()V

    return-void
.end method

.method private updateUI()V
    .locals 15

    iget-wide v8, p0, Lcom/android/phone/DataUsageListener;->mPolicyThreshold:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v8, p0, Lcom/android/phone/DataUsageListener;->mDataUsed:J

    const-wide/16 v10, 0x64

    mul-long/2addr v8, v10

    iget-wide v10, p0, Lcom/android/phone/DataUsageListener;->mPolicyThreshold:J

    div-long/2addr v8, v10

    long-to-int v6, v8

    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mEnd:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/phone/DataUsageListener;->mStart:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long v4, v8, v10

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/phone/DataUsageListener;->mStart:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long v1, v8, v10

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_6

    const/4 v3, 0x0

    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sub-long v8, v4, v1

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v8, 0x6

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0x16d

    if-lt v7, v8, :cond_2

    const/4 v7, 0x0

    :cond_2
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mCurrentUsagePref:Landroid/preference/Preference;

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/android/phone/DataUsageListener;->mCurrentThrottleRate:I

    if-lez v8, :cond_7

    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mCurrentUsagePref:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    const v10, 0x7f0e00d3

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-wide v13, p0, Lcom/android/phone/DataUsageListener;->mPolicyThreshold:J

    invoke-direct {p0, v13, v14}, Lcom/android/phone/DataUsageListener;->toReadable(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget v13, p0, Lcom/android/phone/DataUsageListener;->mCurrentThrottleRate:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mTimeFramePref:Landroid/preference/Preference;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mTimeFramePref:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    const v10, 0x7f0e00d4

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v13

    iget-object v14, p0, Lcom/android/phone/DataUsageListener;->mEnd:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mThrottleRatePref:Landroid/preference/Preference;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mThrottleRatePref:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    const v10, 0x7f0e00d5

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/phone/DataUsageListener;->mPolicyThrottleValue:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/phone/DataUsageListener;->mSummaryPrefEnabled:Z

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/android/phone/DataUsageListener;->mCurrentThrottleRate:I

    if-lez v8, :cond_8

    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    const v10, 0x7f0e00d3

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-wide v13, p0, Lcom/android/phone/DataUsageListener;->mPolicyThreshold:J

    invoke-direct {p0, v13, v14}, Lcom/android/phone/DataUsageListener;->toReadable(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget v13, p0, Lcom/android/phone/DataUsageListener;->mCurrentThrottleRate:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    const-wide/16 v8, 0x64

    mul-long/2addr v8, v1

    div-long/2addr v8, v4

    long-to-int v3, v8

    goto/16 :goto_1

    :cond_7
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mCurrentUsagePref:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    const v10, 0x7f0e00d2

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-wide v13, p0, Lcom/android/phone/DataUsageListener;->mDataUsed:J

    invoke-direct {p0, v13, v14}, Lcom/android/phone/DataUsageListener;->toReadable(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-wide v13, p0, Lcom/android/phone/DataUsageListener;->mPolicyThreshold:J

    invoke-direct {p0, v13, v14}, Lcom/android/phone/DataUsageListener;->toReadable(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_8
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    const v10, 0x7f0e00d1

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-wide v13, p0, Lcom/android/phone/DataUsageListener;->mDataUsed:J

    invoke-direct {p0, v13, v14}, Lcom/android/phone/DataUsageListener;->toReadable(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-wide v13, p0, Lcom/android/phone/DataUsageListener;->mPolicyThreshold:J

    invoke-direct {p0, v13, v14}, Lcom/android/phone/DataUsageListener;->toReadable(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v13

    iget-object v14, p0, Lcom/android/phone/DataUsageListener;->mEnd:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updateUsageStats(JJJJ)V
    .locals 2

    add-long v0, p1, p3

    iput-wide v0, p0, Lcom/android/phone/DataUsageListener;->mDataUsed:J

    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mStart:Ljava/util/Calendar;

    invoke-virtual {v0, p5, p6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mEnd:Ljava/util/Calendar;

    invoke-virtual {v0, p7, p8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Lcom/android/phone/DataUsageListener;->updateUI()V

    return-void
.end method


# virtual methods
.method pause()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/DataUsageListener;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method resume()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/DataUsageListener;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/phone/DataUsageListener;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/phone/DataUsageListener;->updatePolicy()V

    return-void
.end method
