.class public Lcom/android/email/ViewPatternMatching;
.super Ljava/lang/Object;
.source "ViewPatternMatching.java"


# static fields
.field private static final OWN_WEB_URL:Ljava/util/regex/Pattern;

.field private static final WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

.field private static enablePatternCalendar:Z

.field private static enablePatternCalendarKeyword:Z

.field private static enablePatternLocation:Z

.field private static enablePatternPhone:Z

.field private static mCurrentPos:I


# instance fields
.field private final PATTERN_MATCHING_TIMEOUT:I

.field private mContext:Landroid/content/Context;

.field private mTimeOfMessage:J

.field final nDatePostLen:I

.field final nMatchingPostPos:I

.field final nTimePostLen:I

.field private nTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/ViewPatternMatching;->enablePatternPhone:Z

    sput-boolean v0, Lcom/android/email/ViewPatternMatching;->enablePatternCalendar:Z

    sput-boolean v1, Lcom/android/email/ViewPatternMatching;->enablePatternLocation:Z

    sput-boolean v0, Lcom/android/email/ViewPatternMatching;->enablePatternCalendarKeyword:Z

    sput v1, Lcom/android/email/ViewPatternMatching;->mCurrentPos:I

    const-string v0, "(?i)http|https|rtsp://"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/ViewPatternMatching;->WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

    const-string v0, "(?:(?:(?:http|https|Http|Https|rtsp|Rtsp):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?(?:(?:(?:[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef][a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,64}\\.)+(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:cat|com|coop|c[acdfghiklmnoruvxyz])|d[ejkmoz]|(?:edu|e[cegrstu])|f[ijkmor]|(?:gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdeghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:org|om)|(?:pro|p[aefghklmnrstwy])|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agksyz]|v[aceginu]|w[fs]|(?:\u03b4\u03bf\u03ba\u03b9\u03bc\u03ae|\u0438\u0441\u043f\u044b\u0442\u0430\u043d\u0438\u0435|\u0440\u0444|\u0441\u0440\u0431|\u05d8\u05e2\u05e1\u05d8|\u0622\u0632\u0645\u0627\u06cc\u0634\u06cc|\u0625\u062e\u062a\u0628\u0627\u0631|\u0627\u0644\u0627\u0631\u062f\u0646|\u0627\u0644\u062c\u0632\u0627\u0626\u0631|\u0627\u0644\u0633\u0639\u0648\u062f\u064a\u0629|\u0627\u0644\u0645\u063a\u0631\u0628|\u0627\u0645\u0627\u0631\u0627\u062a|\u0628\u06be\u0627\u0631\u062a|\u062a\u0648\u0646\u0633|\u0633\u0648\u0631\u064a\u0629|\u0641\u0644\u0633\u0637\u064a\u0646|\u0642\u0637\u0631|\u0645\u0635\u0631|\u092a\u0930\u0940\u0915\u094d\u0937\u093e|\u092d\u093e\u0930\u0924|\u09ad\u09be\u09b0\u09a4|\u0a2d\u0a3e\u0a30\u0a24|\u0aad\u0abe\u0ab0\u0aa4|\u0b87\u0ba8\u0bcd\u0ba4\u0bbf\u0baf\u0bbe|\u0b87\u0bb2\u0b99\u0bcd\u0b95\u0bc8|\u0b9a\u0bbf\u0b99\u0bcd\u0b95\u0baa\u0bcd\u0baa\u0bc2\u0bb0\u0bcd|\u0baa\u0bb0\u0bbf\u0b9f\u0bcd\u0b9a\u0bc8|\u0c2d\u0c3e\u0c30\u0c24\u0c4d|\u0dbd\u0d82\u0d9a\u0dcf|\u0e44\u0e17\u0e22|\u30c6\u30b9\u30c8|\u4e2d\u56fd|\u4e2d\u570b|\u53f0\u6e7e|\u53f0\u7063|\u65b0\u52a0\u5761|\u6d4b\u8bd5|\u6e2c\u8a66|\u9999\u6e2f|\ud14c\uc2a4\ud2b8|\ud55c\uad6d|xn\\-\\-0zwm56d|xn\\-\\-11b5bs3a9aj6g|xn\\-\\-3e0b707e|xn\\-\\-45brj9c|xn\\-\\-80akhbyknj4f|xn\\-\\-90a3ac|xn\\-\\-9t4b11yi5a|xn\\-\\-clchc0ea0b2g2a9gcd|xn\\-\\-deba0ad|xn\\-\\-fiqs8s|xn\\-\\-fiqz9s|xn\\-\\-fpcrj9c3d|xn\\-\\-fzc2c9e2c|xn\\-\\-g6w251d|xn\\-\\-gecrj9c|xn\\-\\-h2brj9c|xn\\-\\-hgbk6aj7f53bba|xn\\-\\-hlcj6aya9esc7a|xn\\-\\-j6w193g|xn\\-\\-jxalpdlp|xn\\-\\-kgbechtv|xn\\-\\-kprw13d|xn\\-\\-kpry57d|xn\\-\\-lgbbat1ad8j|xn\\-\\-mgbaam7a8h|xn\\-\\-mgbayh7gpa|xn\\-\\-mgbbh1a71e|xn\\-\\-mgbc0a9azcg|xn\\-\\-mgberp4a5d4ar|xn\\-\\-o3cw4h|xn\\-\\-ogbpf8fl|xn\\-\\-p1ai|xn\\-\\-pgbs0dh|xn\\-\\-s9brj9c|xn\\-\\-wgbh1c|xn\\-\\-wgbl6a|xn\\-\\-xkc2al3hye2a|xn\\-\\-xkc2dl3a5ee0h|xn\\-\\-yfro4i67o|xn\\-\\-ygbi2ammx|xn\\-\\-zckzah|xxx)|y[et]|z[amw]))|(?:(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(?:\\:\\d{1,5})?)(?:[\\/\\?](?:(?:[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:\\b|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/ViewPatternMatching;->OWN_WEB_URL:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xfa0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/email/ViewPatternMatching;->PATTERN_MATCHING_TIMEOUT:I

    iput v0, p0, Lcom/android/email/ViewPatternMatching;->nTimeout:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/email/ViewPatternMatching;->nDatePostLen:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/android/email/ViewPatternMatching;->nTimePostLen:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/email/ViewPatternMatching;->nMatchingPostPos:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/ViewPatternMatching;->mTimeOfMessage:J

    return-void
.end method

.method private calendarGetStandardDate(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v5

    const-string v2, ""

    aput-object v2, v1, v4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/email/ViewPatternMatching;->convertStandardRemoveDayofWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/email/ViewPatternMatching;->convertLocalDateToTime(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object p1, v1, v5

    aget-object v2, v1, v4

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/email/ViewPatternMatching;->convertStandardDateToTime(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object p1, v1, v5

    aget-object v2, v1, v4

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    const-string v2, ","

    const-string v3, " "

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    if-eqz v0, :cond_2

    const-string v2, "true"

    aput-object v2, v1, v4

    :goto_0
    return-object v1

    :cond_2
    const-string v2, "false"

    aput-object v2, v1, v4

    goto :goto_0
.end method

.method private calnendarGetTime(Ljava/lang/String;J)J
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "false"

    aput-object v2, v0, v1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_d

    const-string v2, "MessageView P-matching>>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calnendarGetTime:schinfo["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v2, v4, v0

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :try_start_0
    aget-object v2, v4, v0

    const-string v3, "am"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "am"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    :cond_0
    const-string v3, "pm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "pm"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x2

    :cond_1
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v6, 0x3c

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    add-long/2addr p2, v2

    const/4 v2, 0x0

    array-length v3, v5

    const/4 v6, 0x1

    if-le v3, v6, :cond_2

    const/4 v2, 0x1

    aget-object v2, v5, v2

    :cond_2
    add-int/lit8 v3, v0, 0x1

    array-length v6, v4

    if-ge v3, v6, :cond_3

    add-int/lit8 v3, v0, 0x1

    aget-object v3, v4, v3

    const-string v6, "pm"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x2

    :cond_3
    if-eqz v2, :cond_f

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v6, 0x3c

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    add-long/2addr v2, p2

    :goto_1
    const/4 v6, 0x0

    :try_start_1
    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-wide v5

    const-wide/16 v7, 0xc

    cmp-long v5, v5, v7

    if-gez v5, :cond_4

    const/4 v5, 0x2

    if-ne v1, v5, :cond_4

    const-wide/32 v5, 0x2932e00

    add-long/2addr v2, v5

    const/4 v1, 0x2

    :cond_4
    :goto_2
    move-wide p2, v2

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    move-wide v2, p2

    :goto_4
    const-string v5, "MessageView P-matching>>"

    const-string v6, "calnendarGetTime: #3 timeinfo \'>>:\' parse err!!!!!!!!!!!!!!!!"

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v2, "MessageView P-matching>>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calnendarGetTime: calc tonight keyword info :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    aget-object v2, v4, v0

    const-string v3, "am"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    aget-object v2, v4, v0

    const-string v3, "am"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    const-string v3, ""

    if-eq v2, v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    if-lt v3, v5, :cond_5

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v5, 0x3c

    mul-long/2addr v2, v5

    const-wide/16 v5, 0x3c

    mul-long/2addr v2, v5

    const-wide/16 v5, 0x3e8

    mul-long/2addr v2, v5

    add-long/2addr p2, v2

    goto :goto_3

    :cond_7
    aget-object v2, v4, v0

    const-string v3, "pm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    aget-object v2, v4, v0

    const-string v3, "pm"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    const/4 v3, 0x2

    :try_start_3
    const-string v1, ""

    if-eq v5, v1, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_9

    :cond_8
    move v1, v3

    goto :goto_3

    :cond_9
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-wide v1

    const-wide/16 v6, 0x3c

    mul-long/2addr v1, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v1, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v1, v6

    add-long/2addr v1, p2

    :try_start_4
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-wide v5

    long-to-int v5, v5

    const/16 v6, 0xc

    if-ge v5, v6, :cond_a

    const-wide/32 v5, 0x2932e00

    add-long/2addr v1, v5

    :cond_a
    move-wide p2, v1

    move v1, v3

    goto/16 :goto_3

    :cond_b
    add-int/lit8 v2, v0, 0x1

    :try_start_5
    array-length v3, v4

    if-ge v2, v3, :cond_e

    aget-object v2, v4, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-wide v2

    const-wide/16 v5, 0x3c

    mul-long/2addr v2, v5

    const-wide/16 v5, 0x3c

    mul-long/2addr v2, v5

    const-wide/16 v5, 0x3e8

    mul-long/2addr v2, v5

    add-long/2addr v2, p2

    add-int/lit8 v5, v0, 0x1

    :try_start_6
    aget-object v5, v4, v5

    const-string v6, "pm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v1, 0x2

    aget-object v5, v4, v0

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-result-wide v5

    long-to-int v5, v5

    const/16 v6, 0xc

    if-ge v5, v6, :cond_c

    const-wide/32 v5, 0x2932e00

    add-long/2addr v2, v5

    :cond_c
    :goto_5
    move-wide p2, v2

    goto/16 :goto_3

    :catch_1
    move-exception v2

    :goto_6
    const-string v2, "MessageView P-matching>>"

    const-string v3, "calnendarGetTime: #4 timeinfo \':>>\' parse err!!!!!!!!!!!!!!!!"

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_d
    return-wide p2

    :catch_2
    move-exception v1

    move v1, v3

    goto :goto_6

    :catch_3
    move-exception v5

    move-wide p2, v1

    move v1, v3

    goto :goto_6

    :catch_4
    move-exception v5

    move-wide p2, v2

    goto :goto_6

    :catch_5
    move-exception v5

    goto/16 :goto_4

    :cond_e
    move-wide v2, p2

    goto :goto_5

    :cond_f
    move-wide v2, p2

    goto/16 :goto_1
.end method

.method private convertDateReplace(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/16 v10, 0xc

    const/4 v8, 0x2

    const/4 v9, 0x1

    move-object v2, p1

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_3

    const/16 v6, 0x2f

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_0

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    if-ne v1, v9, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    if-ne v1, v8, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v9, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v9, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v9, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_6
    if-ne p2, v9, :cond_b

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v0, v6

    const-string v6, "MessageView P-matching>>"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CALENDAR1: matchedText = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v0, v9, :cond_7

    if-le v0, v10, :cond_a

    :cond_7
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v1, v6

    if-lt v1, v9, :cond_8

    if-le v1, v10, :cond_9

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "01"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2

    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_b
    if-ne p2, v8, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private convertKeywordToDateTime(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 40

    const/4 v3, 0x7

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v39, v0

    const/4 v3, 0x0

    const-string v4, "(su\\w+)"

    aput-object v4, v39, v3

    const/4 v3, 0x1

    const-string v4, "(mo\\w+)"

    aput-object v4, v39, v3

    const/4 v3, 0x2

    const-string v4, "(tu\\w+)"

    aput-object v4, v39, v3

    const/4 v3, 0x3

    const-string v4, "(we\\w+)"

    aput-object v4, v39, v3

    const/4 v3, 0x4

    const-string v4, "(th\\w+)"

    aput-object v4, v39, v3

    const/4 v3, 0x5

    const-string v4, "(fr\\w+)"

    aput-object v4, v39, v3

    const/4 v3, 0x6

    const-string v4, "(sa\\w+)"

    aput-object v4, v39, v3

    const/4 v3, 0x6

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/4 v3, 0x0

    const-string v4, "(dawn)"

    aput-object v4, v38, v3

    const/4 v3, 0x1

    const-string v4, "(mor\\w+)"

    aput-object v4, v38, v3

    const/4 v3, 0x2

    const-string v4, "(mor\\w+)"

    aput-object v4, v38, v3

    const/4 v3, 0x3

    const-string v4, "(\\w+noon)"

    aput-object v4, v38, v3

    const/4 v3, 0x4

    const-string v4, "(eve\\w+)"

    aput-object v4, v38, v3

    const/4 v3, 0x5

    const-string v4, "(nig\\w+)"

    aput-object v4, v38, v3

    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v37, v0

    const/4 v3, 0x0

    const-string v4, "(tod\\w+)"

    aput-object v4, v37, v3

    const/4 v3, 0x1

    const-string v4, "(tom\\w+)"

    aput-object v4, v37, v3

    const/4 v3, 0x2

    const-string v4, "(ton\\w+)"

    aput-object v4, v37, v3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    const v4, 0x7f08001a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    const v4, 0x7f08001b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    const v4, 0x7f08001c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v26, p1

    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v25, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v25, v3

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v18, 0x0

    const/16 v36, 0x0

    const/16 v27, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v20, 0x0

    const/16 v19, 0x0

    const/4 v14, 0x1

    const/4 v9, 0x0

    const/16 v24, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    :try_start_0
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/ViewPatternMatching;->mTimeOfMessage:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    new-instance v13, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/ViewPatternMatching;->mTimeOfMessage:J

    invoke-direct {v13, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const-string v3, "|\\."

    const-string v4, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v32, v0

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v32, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v32, v3

    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v31, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v31, v3

    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v33, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v33, v3

    :try_start_1
    const-string v3, "z/z"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v33, v37

    :goto_1
    const-string v3, "z/z"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v31, v38

    :goto_2
    const-string v3, "z/z"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v32, v39

    :goto_3
    const-string v3, "."

    const-string v4, " "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    const-string v3, ","

    const-string v4, " "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    const-string v3, "  "

    const-string v4, " "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "false"

    const/16 v16, 0x0

    :goto_4
    const/4 v3, 0x3

    move/from16 v0, v16

    if-ge v0, v3, :cond_3

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(?i)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v37, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v33, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v18

    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_0

    const/16 v24, 0x1

    :cond_0
    const-string v3, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    const/4 v3, 0x2

    move/from16 v0, v16

    if-eq v0, v3, :cond_1

    const-string v27, "true"

    :cond_1
    const/4 v3, 0x2

    move/from16 v0, v16

    if-ne v0, v3, :cond_2

    const-string v27, "special"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    const/4 v11, 0x1

    :cond_3
    const/16 v16, 0x6

    :goto_5
    const/4 v3, -0x1

    move/from16 v0, v16

    if-le v0, v3, :cond_4

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(?i)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v39, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v32, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v18

    add-int/lit8 v3, v16, 0x1

    if-ge v14, v3, :cond_d

    add-int/lit8 v3, v16, 0x1

    sub-int v9, v3, v14

    :goto_6
    const-string v3, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v26

    const/4 v12, 0x1

    const/4 v11, 0x1

    :cond_4
    :goto_7
    const/16 v16, 0x0

    :goto_8
    const/4 v3, 0x6

    move/from16 v0, v16

    if-ge v0, v3, :cond_5

    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(?i)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v38, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v31, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->end()I

    move-result v19

    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v18

    const/4 v3, 0x3

    move/from16 v0, v16

    if-ge v0, v3, :cond_10

    const/4 v10, 0x1

    :goto_9
    if-eqz v10, :cond_11

    const-string v3, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    :goto_a
    const/4 v11, 0x1

    :cond_5
    if-nez p2, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v9

    add-int v4, v4, v24

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    :cond_6
    const-string v3, "  "

    const-string v4, " "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v26

    :goto_b
    if-nez v11, :cond_7

    if-nez p2, :cond_14

    :cond_7
    const/4 v3, 0x0

    aput-object v26, v25, v3

    const/4 v3, 0x1

    aput-object v27, v25, v3

    :goto_c
    const-string v3, "MessageView P-matching>>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertKeywordToDateTime: convertKeywordToDate, out(DMY) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",rst="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",allday"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-object v25

    :cond_8
    :try_start_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v15

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    goto/16 :goto_0

    :cond_9
    :try_start_6
    const-string v3, "|"

    const-string v4, " "

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v30

    const-string v3, " "

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_1

    :cond_a
    const-string v3, "|"

    const-string v4, " "

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v29

    const-string v3, " "

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_2

    :cond_b
    const-string v3, "|"

    const-string v4, " "

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    const-string v3, " "

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v32

    goto/16 :goto_3

    :cond_c
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    :cond_d
    add-int/lit8 v3, v16, 0x1

    if-le v14, v3, :cond_e

    add-int/lit8 v3, v16, 0x7

    add-int/lit8 v3, v3, 0x1

    sub-int v9, v3, v14

    goto/16 :goto_6

    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_f
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_5

    :catch_1
    move-exception v15

    :try_start_7
    const-string v3, "MessageView P-matching>>"

    const-string v4, "convertKeywordToDateTime: parse error - index ?"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_7

    :catch_2
    move-exception v15

    const-string v3, "MessageView P-matching>>"

    const-string v4, "convertKeywordToDateTime: parse error"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_9

    :cond_11
    if-eqz v12, :cond_12

    :try_start_8
    const-string v3, "pm"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_a

    :cond_12
    const-string v3, "pm"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-result-object v26

    goto/16 :goto_a

    :cond_13
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_8

    :cond_14
    const/4 v3, 0x0

    aput-object p1, v25, v3

    const/4 v3, 0x1

    const-string v4, "false"

    aput-object v4, v25, v3

    goto/16 :goto_c

    :catch_3
    move-exception v3

    goto/16 :goto_3
.end method

.method private convertLocalDateToTime(Ljava/lang/String;)[Ljava/lang/String;
    .locals 20

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v6, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, ""

    aput-object v18, v6, v17

    const/16 v17, 0x1

    const-string v18, ""

    aput-object v18, v6, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f08001d

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f08001e

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f08001b

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f08001f

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f080020

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v17, "|"

    const-string v18, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string v17, "|"

    const-string v18, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const-string v17, "|"

    const-string v18, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v17, "|"

    const-string v18, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    array-length v4, v15

    move-object/from16 v0, v16

    array-length v5, v0

    if-eq v4, v5, :cond_0

    const-string v17, "MessageView P-matching>>"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "convertLocalDateToTime: something wrong inlen="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",lenout="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    if-le v4, v5, :cond_0

    move v4, v5

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v17, v15, v3

    aget-object v18, v16, v3

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v4, v13

    array-length v5, v14

    if-eq v4, v5, :cond_2

    const-string v17, "MessageView P-matching>>"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "convertLocalDateToTime: something wrong inlen="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",lenout="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    if-le v4, v5, :cond_2

    move v4, v5

    :cond_2
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v4, v0, :cond_3

    const/16 v17, 0x0

    aget-object v17, v13, v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v17, v13, v3

    aget-object v18, v14, v3

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/16 v17, 0x2

    :try_start_0
    move/from16 v0, v17

    new-array v8, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, ""

    aput-object v18, v8, v17

    const/16 v17, 0x1

    const-string v18, ""

    aput-object v18, v8, v17

    const-string v17, "z/z"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string v17, "|"

    const-string v18, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v0, v8

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    const/4 v3, 0x0

    :goto_2
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v3, v0, :cond_4

    aget-object v17, v8, v3

    const-string v18, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x3

    :goto_3
    const/16 v17, 0x6

    move/from16 v0, v17

    if-ge v3, v0, :cond_5

    aget-object v17, v8, v3

    const-string v18, "pm"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catch_0
    move-exception v17

    :cond_5
    const-string v17, "  "

    const-string v18, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v17, "^"

    const-string v18, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v17, "/ "

    const-string v18, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v17, "//"

    const-string v18, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v17, " :"

    const-string v18, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v17, ": "

    const-string v18, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v17, "MessageView P-matching>>"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "convertLocalDateToTime: rst="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x0

    aput-object p1, v6, v17

    const/16 v17, 0x1

    const-string v18, "false"

    aput-object v18, v6, v17

    return-object v6
.end method

.method private convertStandardDateToTime(Ljava/lang/String;)[Ljava/lang/String;
    .locals 16

    const-string v1, "(\\.|\\/|\\s|\\-)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "([0-3]?\\d)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "([0-3]?\\d)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "([1-2]\\d\\d\\d)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "([0-3]?\\d)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "([0-3]?\\d)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "([0-3]?\\d)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(([1-2]\\d\\d\\d))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "([0-3]?\\d)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "([0-3]?\\d)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v1, 0xc

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "(jan(\\w+)?)"

    aput-object v2, v7, v1

    const/4 v1, 0x1

    const-string v2, "(feb(\\w+)?)"

    aput-object v2, v7, v1

    const/4 v1, 0x2

    const-string v2, "(mar(\\w+)?)"

    aput-object v2, v7, v1

    const/4 v1, 0x3

    const-string v2, "(apr(\\w+)?)"

    aput-object v2, v7, v1

    const/4 v1, 0x4

    const-string v2, "(may(\\w+)?)"

    aput-object v2, v7, v1

    const/4 v1, 0x5

    const-string v2, "(jun(\\w+)?)"

    aput-object v2, v7, v1

    const/4 v1, 0x6

    const-string v2, "(jul(\\w+)?)"

    aput-object v2, v7, v1

    const/4 v1, 0x7

    const-string v2, "(aug(\\w+)?)"

    aput-object v2, v7, v1

    const/16 v1, 0x8

    const-string v2, "(sep(\\w+)?)"

    aput-object v2, v7, v1

    const/16 v1, 0x9

    const-string v2, "(oct(\\w+)?)"

    aput-object v2, v7, v1

    const/16 v1, 0xa

    const-string v2, "(nov(\\w+)?)"

    aput-object v2, v7, v1

    const/16 v1, 0xb

    const-string v2, "(dec(\\w+)?)"

    aput-object v2, v7, v1

    const-string v8, "(\\w+)(\\.)?[\\s\\,]{1,2}([0-3]?\\d)(th|st|nd|rd|,)?[\\s\\,]{1,2}([1-2]\\d\\d\\d)"

    const-string v9, "([0-3]?\\d)(th|st|nd|rd|,)?(\\s)(\\w+)(\\.)?[\\s\\,]{1,2}([1-2]\\d\\d\\d)"

    const-string v1, ""

    const/4 v1, 0x2

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v10, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v10, v1

    const/4 v1, 0x1

    const-string v2, "false"

    aput-object v2, v10, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    const-string v1, "MessageView P-matching>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertStandardDateToTime: orignal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    const-string v3, "true"

    aput-object v3, v10, v1

    invoke-static {v4, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "."

    const-string v3, "/"

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "-"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "//"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v5, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "."

    const-string v3, "/"

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "-"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "//"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const-string v12, "/"

    const-string v13, "/20"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v12, v13}, Lcom/android/email/ViewPatternMatching;->convertDateReplace(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-static {v6, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "."

    const-string v3, "/"

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "-"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "//"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    const-string v12, "/"

    const-string v13, "/"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v12, v13}, Lcom/android/email/ViewPatternMatching;->convertDateReplace(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-static {v8, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "."

    const-string v3, "/"

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "-"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "//"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "st"

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "nd"

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "rd"

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "th"

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    :goto_2
    const/16 v12, 0xc

    if-ge v1, v12, :cond_9

    aget-object v12, v7, v1

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "%02d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    const/4 v3, 0x1

    const-string v12, "/"

    const-string v13, "/"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v12, v13}, Lcom/android/email/ViewPatternMatching;->convertDateReplace(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v9, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "."

    const-string v3, "/"

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "-"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "//"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "st"

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "nd"

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "rd"

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "th"

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    :goto_4
    const/16 v12, 0xc

    if-ge v1, v12, :cond_8

    aget-object v12, v7, v1

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, "%02d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    const/4 v3, 0x0

    const-string v12, "/"

    const-string v13, "/"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v12, v13}, Lcom/android/email/ViewPatternMatching;->convertDateReplace(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    const-string v1, "MessageView P-matching>>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "convertStandardDateToTime:error? = "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto/16 :goto_1

    :catch_0
    move-exception v1

    const-string v1, "MessageView P-matching>>"

    const-string v2, "convertStandardDateToTime: parse error"

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v1, "MessageView P-matching>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertStandardDateToTime: out(DMY) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    aput-object p1, v10, v1

    return-object v10

    :cond_8
    move-object v1, v3

    goto :goto_5

    :cond_9
    move-object v1, v3

    goto/16 :goto_3
.end method

.method private convertStandardRemoveDayofWeek(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    iget-object v8, p0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    const v9, 0x7f080015

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    const v9, 0x7f08001a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    move-object v4, p1

    const/4 v6, 0x0

    const-string v8, "z/z"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(?i)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    :try_start_0
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    const-string v8, "\\d"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v8, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x1

    if-le v8, v9, :cond_2

    :cond_0
    :goto_1
    const-string v8, "MessageView P-matching>>"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "convertStandardRemoveDayofWeek: strPattern = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(?i)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v8, ""

    invoke-virtual {p1, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v8, "MessageView P-matching>>"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "convertStandardRemoveDayofWeek: error? = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public addToCalendarPeriod(Ljava/lang/String;C)Landroid/content/Intent;
    .locals 27

    const-string v20, ""

    const-string v11, "~"

    const-wide/16 v13, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v9, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v21, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v22, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "false"

    aput-object v4, v2, v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v23

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int v24, v3, v4

    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "&nbsp;"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u00a0"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&ndash;"

    const-string v5, "-"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u2013"

    const-string v5, "-"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\. "

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\."

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\("

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\)"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "  "

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    packed-switch p2, :pswitch_data_0

    const/4 v2, 0x0

    goto/16 :goto_0

    :pswitch_0
    const-string v11, "~"

    const-string v3, "~"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    const/4 v4, 0x0

    const/4 v3, 0x5

    :try_start_0
    new-array v7, v3, [I

    fill-array-data v7, :array_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v3, 0x0

    move v6, v3

    :goto_1
    if-ge v6, v8, :cond_35

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v3, v0, :cond_a

    add-int/lit8 v3, v4, 0x1

    aput v6, v7, v4

    const/4 v4, 0x4

    if-le v3, v4, :cond_b

    :goto_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    const-string v3, "-"

    const-string v4, "~"

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_3
    move-object v6, v3

    :goto_4
    :try_start_1
    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v3, v0

    if-eqz v3, :cond_33

    const/4 v3, 0x0

    aget-object v3, v20, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/email/ViewPatternMatching;->calendarGetStandardDate(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v20, v4

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_32

    const/4 v3, 0x1

    :goto_5
    const/4 v4, 0x0

    :try_start_2
    aget-object v4, v20, v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v4, v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_14

    move-result-wide v7

    const/4 v5, 0x0

    :try_start_3
    aget-object v5, v20, v5

    const/4 v12, 0x0

    aget-object v4, v4, v12

    const-string v12, ""

    invoke-virtual {v5, v4, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_6
    move-object/from16 v0, v20

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_31

    const/4 v4, 0x1

    aget-object v4, v20, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/email/ViewPatternMatching;->calendarGetStandardDate(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v12, 0x0

    aget-object v12, v4, v12

    aput-object v12, v20, v5

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    const/4 v4, 0x1

    aget-object v4, v20, v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v4, 0x0

    aget-object v4, v12, v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_15

    move-result-wide v4

    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "~"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v20, v10

    const/16 v18, 0x0

    aget-object v12, v12, v18

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v10, v12, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_16

    move-result-object v6

    :goto_7
    const/4 v15, 0x1

    move-wide v9, v4

    move/from16 v4, v17

    move v5, v3

    move/from16 v3, v16

    move-wide/from16 v25, v7

    move-object v8, v6

    move-wide v6, v13

    move-wide/from16 v13, v25

    :goto_8
    const-string v12, "MessageView P-matching>>"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "addToCalendarPeriod: inputdata="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", CType["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v12, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, ","

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v8, v12, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v15, :cond_29

    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/email/ViewPatternMatching;->convertLocalDateToTime(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x0

    aget-object v12, v12, v16

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v12, " "

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v8, v12, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "MessageView P-matching>>"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "addToCalendarPeriod: mHasTimeInfo="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v12, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "-"

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v11, "-"

    :cond_2
    const-string v12, "~"

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v11, "~"

    :cond_3
    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v11, v0

    if-eqz v11, :cond_4

    const/4 v11, 0x0

    aget-object v11, v16, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13, v14}, Lcom/android/email/ViewPatternMatching;->calnendarGetTime(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v17, v11, v13

    if-lez v17, :cond_4

    move-wide v13, v11

    :cond_4
    move-object/from16 v0, v16

    array-length v11, v0

    const/4 v12, 0x1

    if-le v11, v12, :cond_5

    const/4 v11, 0x1

    aget-object v11, v16, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9, v10}, Lcom/android/email/ViewPatternMatching;->calnendarGetTime(Ljava/lang/String;J)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    move-result-wide v11

    cmp-long v16, v11, v9

    if-lez v16, :cond_5

    move-wide v9, v11

    :cond_5
    move-object v12, v8

    move-wide/from16 v25, v9

    move-wide/from16 v10, v25

    move-wide v8, v13

    :goto_9
    if-eqz v5, :cond_28

    if-nez v15, :cond_28

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v12, " "

    const-string v13, ""

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v12, "~"

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v12, v4

    if-eqz v12, :cond_6

    const/4 v12, 0x0

    :try_start_6
    aget-object v12, v4, v12

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d

    move-result-wide v8

    :cond_6
    :goto_a
    array-length v12, v4

    const/4 v13, 0x1

    if-le v12, v13, :cond_7

    const/4 v12, 0x1

    :try_start_7
    aget-object v4, v4, v12

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c

    move-result-wide v10

    :cond_7
    :goto_b
    const/4 v4, 0x1

    move-wide/from16 v25, v10

    move-wide v10, v8

    move-wide/from16 v8, v25

    :goto_c
    if-nez v4, :cond_8

    if-nez v15, :cond_8

    if-eqz v5, :cond_8

    const/4 v4, 0x1

    :cond_8
    const-string v12, "MessageView P-matching>>"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addToCalendarPeriod: hasTime="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", hasDate="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_27

    if-eqz v3, :cond_27

    if-nez v15, :cond_27

    const-wide/32 v12, 0x44aa200

    add-long/2addr v10, v12

    const-wide/32 v12, 0x44aa200

    add-long/2addr v8, v12

    move-wide/from16 v25, v8

    move-wide v8, v10

    move-wide/from16 v11, v25

    :goto_d
    if-eqz v4, :cond_26

    if-eqz v15, :cond_26

    const/4 v4, 0x0

    move v10, v4

    :goto_e
    if-eqz v10, :cond_24

    const-wide/32 v2, 0x25c3f80

    add-long/2addr v2, v11

    :goto_f
    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-nez v4, :cond_25

    const-wide/16 v2, 0x0

    :cond_9
    :goto_10
    const-string v4, "MessageView P-matching>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addToCalendarPeriod time info : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", allday="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_8
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.action.EDIT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "vnd.android.cursor.item/event"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "beginTime"

    invoke-virtual {v4, v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "endTime"

    invoke-virtual {v4, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "allDay"

    invoke-virtual {v4, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "title"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "description"

    const-string v3, "Email"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b

    move-object v2, v4

    goto/16 :goto_0

    :cond_a
    move v3, v4

    :cond_b
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v3

    goto/16 :goto_1

    :cond_c
    const/4 v4, 0x5

    if-ne v3, v4, :cond_d

    const/4 v3, 0x2

    :try_start_9
    aget v3, v7, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ~ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_d
    const/4 v4, 0x3

    if-ne v3, v4, :cond_34

    div-int/lit8 v3, v8, 0x2

    const/4 v4, 0x0

    aget v4, v7, v4

    sub-int v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v6, 0x2

    aget v6, v7, v6

    sub-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v4, v3, :cond_e

    const/4 v3, 0x2

    aget v3, v7, v3

    :goto_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ~ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_e
    const/4 v3, 0x0

    aget v3, v7, v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_11

    :catch_0
    move-exception v3

    const-string v3, "MessageView P-matching>>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToCalendarPeriod:T3 split error"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    move-object v6, v5

    goto/16 :goto_4

    :catch_1
    move-exception v3

    move v3, v12

    move-object v5, v6

    move-wide/from16 v6, v18

    :goto_12
    const-string v4, "MessageView P-matching>>"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addToCalendarPeriod:T3 parse error"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v4, v17

    move-object v8, v5

    move v5, v3

    move/from16 v3, v16

    move-wide/from16 v25, v13

    move-wide v13, v6

    move-wide/from16 v6, v25

    goto/16 :goto_8

    :pswitch_1
    const-string v11, "~"

    const-string v3, "~"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    const/4 v4, 0x0

    const/4 v3, 0x5

    :try_start_a
    new-array v7, v3, [I

    fill-array-data v7, :array_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v3, 0x0

    move v6, v3

    :goto_13
    if-ge v6, v8, :cond_30

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v3, v0, :cond_13

    add-int/lit8 v3, v4, 0x1

    aput v6, v7, v4

    const/4 v4, 0x4

    if-le v3, v4, :cond_14

    :goto_14
    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    const-string v3, "-"

    const-string v4, "~"

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    move-result-object v5

    :cond_10
    :goto_15
    move-object v4, v5

    :goto_16
    :try_start_b
    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v3, v5

    if-eqz v3, :cond_2f

    const/4 v3, 0x0

    aget-object v3, v5, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/email/ViewPatternMatching;->calendarGetStandardDate(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v7, v3, v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aget-object v3, v3, v6

    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v3, 0x1

    :goto_17
    const/4 v6, 0x0

    :try_start_c
    aget-object v4, v5, v6

    :goto_18
    array-length v6, v5

    const/4 v7, 0x1

    if-le v6, v7, :cond_12

    const/4 v6, 0x1

    aget-object v6, v5, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/email/ViewPatternMatching;->calendarGetStandardDate(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    aget-object v8, v6, v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v3, 0x1

    :cond_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_13

    move-result-object v4

    :cond_12
    const/4 v15, 0x0

    move v5, v3

    move-wide v6, v13

    move-object v8, v4

    move-wide/from16 v13, v18

    move/from16 v4, v17

    move/from16 v3, v16

    goto/16 :goto_8

    :cond_13
    move v3, v4

    :cond_14
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v3

    goto/16 :goto_13

    :cond_15
    const/4 v4, 0x5

    if-ne v3, v4, :cond_16

    const/4 v3, 0x2

    :try_start_d
    aget v3, v7, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ~ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_15

    :cond_16
    const/4 v4, 0x3

    if-ne v3, v4, :cond_10

    div-int/lit8 v3, v8, 0x2

    const/4 v4, 0x0

    aget v4, v7, v4

    sub-int v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v6, 0x2

    aget v6, v7, v6

    sub-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v4, v3, :cond_17

    const/4 v3, 0x2

    aget v3, v7, v3

    :goto_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ~ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_15

    :cond_17
    const/4 v3, 0x0

    aget v3, v7, v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_19

    :catch_2
    move-exception v3

    const-string v3, "MessageView P-matching>>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToCalendarPeriod:T2 split error"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    move-object v4, v5

    goto/16 :goto_16

    :catch_3
    move-exception v3

    move v3, v12

    move-object v5, v4

    :goto_1a
    const-string v4, "MessageView P-matching>>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addToCalendarPeriod:T2 parse error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v4, v17

    move-wide v6, v13

    move-object v8, v5

    move-wide/from16 v13, v18

    move v5, v3

    move/from16 v3, v16

    goto/16 :goto_8

    :pswitch_2
    const-string v3, "-"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d

    const-string v3, "-"

    :goto_1b
    const-string v4, "~"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v3, "~"

    :cond_19
    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string v4, ""

    const-string v4, ""

    array-length v4, v6

    const/4 v7, 0x1

    if-le v4, v7, :cond_1c

    const/4 v4, 0x1

    aget-object v4, v6, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/email/ViewPatternMatching;->calendarGetStandardDate(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v7, 0x1

    aget-object v4, v4, v7

    const-string v7, "true"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v4, 0x1

    :goto_1c
    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v11, 0x3

    if-eq v8, v11, :cond_1a

    const-string v8, "MessageView P-matching>>"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addToCalendarPeriod:T6 incorrect date=["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] or parse err="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    const/4 v8, 0x0

    aget-object v6, v6, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/email/ViewPatternMatching;->convertStandardRemoveDayofWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/email/ViewPatternMatching;->convertLocalDateToTime(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/4 v8, 0x1

    aget-object v6, v6, v8

    const-string v8, "true"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/4 v4, 0x1

    :cond_1b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/email/ViewPatternMatching;->convertStandardDateToTime(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1d
    const/4 v15, 0x0

    move-wide v6, v13

    move-object v11, v3

    move-object v8, v5

    move-wide/from16 v13, v18

    move/from16 v3, v16

    move v5, v4

    move/from16 v4, v17

    goto/16 :goto_8

    :cond_1c
    const-string v4, "MessageView P-matching>>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addToCalendarPeriod:T6 incorrect type=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] or date="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v12

    goto :goto_1d

    :pswitch_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/email/ViewPatternMatching;->calendarGetStandardDate(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v5, v3, v4

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v12, 0x1

    :cond_1d
    if-eqz v12, :cond_2b

    :try_start_e
    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v6, v3, v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    :try_start_f
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_11

    move-result-wide v3

    :try_start_10
    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_12

    move-result-object v5

    :goto_1e
    const/4 v15, 0x1

    const/4 v6, 0x0

    move-wide v9, v3

    move-wide v13, v3

    move-object v8, v5

    move v5, v6

    move-wide v6, v3

    move/from16 v4, v17

    move/from16 v3, v16

    goto/16 :goto_8

    :catch_4
    move-exception v3

    move-wide v3, v13

    move-object/from16 v6, v20

    :goto_1f
    const-string v7, "MessageView P-matching>>"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addToCalendarPeriod:T7 parse err="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :pswitch_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/email/ViewPatternMatching;->convertKeywordToDateTime(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x1

    aget-object v3, v6, v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/16 v17, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    :goto_20
    const/4 v7, 0x0

    :try_start_11
    aget-object v6, v6, v7

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x0

    aget-object v20, v9, v6

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    move-result-wide v7

    :try_start_12
    array-length v6, v9

    const/4 v10, 0x1

    if-le v6, v10, :cond_20

    const/4 v6, 0x1

    aget-object v6, v9, v6
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f

    const/4 v5, 0x2

    :goto_21
    :try_start_13
    array-length v10, v9

    if-ge v5, v10, :cond_1f

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v12, v9, v5

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_10

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_1e
    const/4 v3, 0x1

    aget-object v3, v6, v3

    const-string v4, "special"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/16 v16, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    goto :goto_20

    :cond_1f
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_22
    move-wide/from16 v25, v7

    move-object v8, v6

    move-wide/from16 v6, v25

    :goto_23
    const/4 v9, 0x0

    move v15, v5

    move-wide v13, v6

    move v5, v9

    move-wide v9, v6

    goto/16 :goto_8

    :cond_20
    const/4 v6, 0x0

    move/from16 v25, v6

    move-object v6, v5

    move/from16 v5, v25

    goto :goto_22

    :catch_5
    move-exception v6

    move-object v7, v5

    move-wide v5, v13

    :goto_24
    const-string v8, "MessageView P-matching>>"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addToCalendarPeriod:T5 parse err="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v7

    move-wide/from16 v25, v5

    move-wide/from16 v6, v25

    move v5, v15

    goto :goto_23

    :pswitch_5
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/email/ViewPatternMatching;->calendarGetStandardDate(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    aget-object v3, v4, v3

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v12, 0x1

    :cond_21
    if-eqz v12, :cond_22

    :try_start_14
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v20, v4, v5

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    const-string v4, ""

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6

    move-result-object v3

    :cond_22
    :goto_25
    const/4 v15, 0x1

    const/4 v4, 0x0

    move v5, v4

    move-wide v9, v13

    move-wide v6, v13

    move-object v8, v3

    move/from16 v3, v16

    move/from16 v4, v17

    goto/16 :goto_8

    :catch_6
    move-exception v4

    const-string v4, "MessageView P-matching>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToCalendarPeriod:T4 parse err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :pswitch_6
    :try_start_15
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/ViewPatternMatching;->mTimeOfMessage:J

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-eqz v3, :cond_23

    new-instance v3, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/ViewPatternMatching;->mTimeOfMessage:J

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_e

    :cond_23
    :goto_26
    :try_start_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7

    move-result-wide v13

    :goto_27
    const/4 v15, 0x1

    const/4 v3, 0x0

    move/from16 v4, v17

    move-wide v9, v13

    move-wide v6, v13

    move-object v8, v5

    move v5, v3

    move/from16 v3, v16

    goto/16 :goto_8

    :catch_7
    move-exception v3

    const-string v3, "MessageView P-matching>>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToCalendarPeriod:T1 parse err="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    :catch_8
    move-exception v11

    move-object v12, v8

    move-wide/from16 v25, v9

    move-wide/from16 v10, v25

    move-wide v8, v13

    goto/16 :goto_9

    :cond_24
    :try_start_17
    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9

    move-result v4

    add-int/2addr v3, v4

    int-to-long v3, v3

    sub-long v4, v8, v3

    :goto_28
    :try_start_18
    invoke-virtual {v2, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v8, 0x10

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_a

    move-result v2

    add-int/2addr v2, v3

    int-to-long v2, v2

    sub-long v2, v11, v2

    move-wide v8, v4

    goto/16 :goto_f

    :catch_9
    move-exception v3

    move/from16 v0, v24

    int-to-long v3, v0

    sub-long v4, v8, v3

    goto :goto_28

    :catch_a
    move-exception v2

    move/from16 v0, v24

    int-to-long v2, v0

    sub-long v2, v11, v2

    move-wide v8, v4

    goto/16 :goto_f

    :cond_25
    cmp-long v4, v8, v2

    if-lez v4, :cond_9

    const-wide/32 v2, 0x36ee80

    add-long/2addr v2, v8

    goto/16 :goto_10

    :catch_b
    move-exception v2

    const-string v2, "MessageView P-matching>>"

    const-string v3, "addToCalendarPeriod #11 calendar intent err !!!!!"

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_c
    move-exception v4

    goto/16 :goto_b

    :catch_d
    move-exception v12

    goto/16 :goto_a

    :catch_e
    move-exception v3

    goto/16 :goto_26

    :catch_f
    move-exception v6

    move-wide/from16 v25, v7

    move-object v7, v5

    move-wide/from16 v5, v25

    goto/16 :goto_24

    :catch_10
    move-exception v5

    move-wide/from16 v25, v7

    move-object v7, v6

    move-wide/from16 v5, v25

    goto/16 :goto_24

    :catch_11
    move-exception v3

    move-wide v3, v13

    goto/16 :goto_1f

    :catch_12
    move-exception v7

    goto/16 :goto_1f

    :catch_13
    move-exception v5

    move-object v5, v4

    goto/16 :goto_1a

    :catch_14
    move-exception v4

    move-object v5, v6

    move-wide/from16 v6, v18

    goto/16 :goto_12

    :catch_15
    move-exception v4

    move-object v5, v6

    move-wide/from16 v25, v7

    move-wide/from16 v6, v25

    goto/16 :goto_12

    :catch_16
    move-exception v9

    move-wide v9, v4

    move-object v5, v6

    move-wide/from16 v25, v7

    move-wide/from16 v6, v25

    goto/16 :goto_12

    :cond_26
    move v10, v4

    goto/16 :goto_e

    :cond_27
    move-wide/from16 v25, v8

    move-wide v8, v10

    move-wide/from16 v11, v25

    goto/16 :goto_d

    :cond_28
    move-wide/from16 v25, v10

    move-wide v10, v8

    move-wide/from16 v8, v25

    goto/16 :goto_c

    :cond_29
    move-object v12, v8

    move-wide/from16 v25, v9

    move-wide/from16 v10, v25

    move-wide v8, v13

    goto/16 :goto_9

    :cond_2a
    move/from16 v3, v16

    move/from16 v4, v17

    goto/16 :goto_20

    :cond_2b
    move-wide v3, v13

    goto/16 :goto_1e

    :cond_2c
    move v4, v12

    goto/16 :goto_1c

    :cond_2d
    move-object v3, v11

    goto/16 :goto_1b

    :cond_2e
    move v3, v12

    goto/16 :goto_17

    :cond_2f
    move v3, v12

    goto/16 :goto_18

    :cond_30
    move v3, v4

    goto/16 :goto_14

    :cond_31
    move-wide v4, v9

    goto/16 :goto_7

    :cond_32
    move v3, v12

    goto/16 :goto_5

    :cond_33
    move v3, v12

    move-wide/from16 v7, v18

    goto/16 :goto_6

    :cond_34
    move-object v3, v5

    goto/16 :goto_3

    :cond_35
    move v3, v4

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public pmDataMatching(Ljava/lang/String;II)Ljava/lang/String;
    .locals 82
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    move/from16 v16, p3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    if-nez v78, :cond_0

    new-instance v78, Lcom/android/email/mail/MessagingException;

    const-string v79, "Uninitialized. call first init"

    invoke-direct/range {v78 .. v79}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v78

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v78

    move/from16 v0, p3

    move/from16 v1, v78

    if-gt v0, v1, :cond_1

    if-gez p3, :cond_2

    :cond_1
    new-instance v78, Lcom/android/email/mail/MessagingException;

    const-string v79, "invalid agument"

    invoke-direct/range {v78 .. v79}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v78

    :cond_2
    const-string v32, "[\\/\\s\\-]"

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:(?:[0-3]?\\d)|(?:[1-2]\\d\\d\\d))"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "(?:[0-3]?\\d)"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "(?:(?:[1-2]\\d\\d\\d)|(?:[0-3]?[\\d]))"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v37, 0x0

    const/16 v44, 0x0

    const/16 v39, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v35, 0x0

    const-wide/16 v72, 0x0

    const-wide/16 v74, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v21

    const/4 v15, 0x0

    const/4 v13, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/4 v12, 0x0

    const/16 v22, 0x0

    const/16 v56, 0x0

    new-instance v28, Ljava/lang/StringBuffer;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v29, Ljava/lang/StringBuffer;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuffer;-><init>()V

    const-string v56, "(?:(?:[\\+]|(?:\\&\\#43\\;))[0-9]{1,4}[\\-\\.\\s]*)?(?:[0-9\\s]{1,6}[\\-\\s\\.]?|(?:\\([0-9]{1,4}\\)[\\s]?))?(?:[0-9]{2,4}[\\-\\.\\s]?[0-9]{2,4}[\\-\\.\\s]?[0-9]{2,12})"

    const-string v77, "(?:<[aA][\\s][hH][rR][eE][fF]=[^>]+>)"

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "|(?:<[^>]+>)"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    const-string v53, "(?:(?:[a-zA-Z][a-zA-Z]?[0-9][\\-\\s][0-9][a-zA-Z][a-zA-Z])|(?:[a-zA-Z][0-9][a-zA-Z][\\-\\s][0-9][a-zA-Z][0-9])|(?:[\\d]{5}(?:[\\-\\s][\\d]{4})?))"

    const-string v46, "(?:[a-zA-Z\\s]{2,20}(?:\\s|\\,|(?:\\&nbsp;)){1,3}[a-zA-Z]{2,10})"

    const-string v47, "(?:[\\s\\,][\\s]?(?:[Uu]nited\\s)?[\\w]+)?"

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:(?:[\\w]?[\\d]{1,4}[\\-\\s](?:\\d[0-9a-zA-Z]{0,3})?)|(?:\\d[0-9a-zA-Z]{0,3}))(?:[\\w\\s#@\\,]{1,40})"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "(?:\\s|\\,|(?:\\&nbsp;)){1,3}"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:[Pp](?:ost)?[\\s\\.]*[Oo](?:ffice)?[\\s\\.]*(?:[Bb][Oo][Xx])?[\\s]*[0-9]{0,10})(?:(?:\\s|\\,|(?:\\&nbsp;)){1,3}"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "(?:(?:\\s|\\,|(?:\\&nbsp;)){1,3}"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")?)?"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    const-string v48, "(?:[\\f\\n\\r\\t\\>][#\\w\\s\\(\\)\\-]{0,30}[\\,\\-]?[\\w\\s\\#\\(\\)\\-]{0,30})?@[\\-0-9]{1,3}[\\.][0-9]{1,7}[\\s\\,]{1,2}[\\-0-9]{1,4}[\\.][0-9]{1,7}"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    const v79, 0x7f080021

    invoke-virtual/range {v78 .. v79}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    const v79, 0x7f080022

    invoke-virtual/range {v78 .. v79}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v51

    const/16 v49, 0x0

    const/16 v52, 0x0

    const-string v78, "z/z"

    move-object/from16 v0, v78

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v78

    if-nez v78, :cond_3

    move-object/from16 v49, v50

    :cond_3
    const-string v78, "z/z"

    move-object/from16 v0, v78

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v78

    if-nez v78, :cond_4

    if-nez v49, :cond_13

    move-object/from16 v49, v51

    :cond_4
    :goto_0
    if-nez v49, :cond_14

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "|"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "|"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    const v79, 0x7f080014

    invoke-virtual/range {v78 .. v79}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    const v79, 0x7f080015

    invoke-virtual/range {v78 .. v79}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    const v79, 0x7f080016

    invoke-virtual/range {v78 .. v79}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    const v79, 0x7f080017

    invoke-virtual/range {v78 .. v79}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    const v79, 0x7f080012

    invoke-virtual/range {v78 .. v79}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    const v79, 0x7f080013

    invoke-virtual/range {v78 .. v79}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v63

    move-object/from16 v66, v62

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")[\\s\\,]{1,2}(?:(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")[\\s\\,]{1,2})?"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "(?:[\\s\\,]{1,2}"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")?)"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    const v79, 0x7f08001a

    invoke-virtual/range {v78 .. v79}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    const v79, 0x7f08001c

    invoke-virtual/range {v78 .. v79}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    const v79, 0x7f08001b

    invoke-virtual/range {v78 .. v79}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    const v79, 0x7f080018

    invoke-virtual/range {v78 .. v79}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    const v79, 0x7f080019

    invoke-virtual/range {v78 .. v79}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v45

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "|"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")[\\.]?[\\s\\,]{0,2}(?:(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")?[\\s\\,]{1,2})(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "|"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "))|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")[\\s]?(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "|"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v37, v38

    move-object/from16 v44, v45

    const-string v78, "z/z"

    move-object/from16 v0, v78

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v78

    if-eqz v78, :cond_5

    move-object/from16 v43, v69

    :cond_5
    const-string v78, "z/z"

    move-object/from16 v0, v78

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v78

    if-nez v78, :cond_6

    const-string v78, "z/z"

    move-object/from16 v0, v78

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v78

    if-eqz v78, :cond_15

    :cond_6
    const-string v39, "z/z"

    :goto_2
    const-string v78, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v78

    if-eq v0, v1, :cond_7

    const-string v78, "z/z"

    move-object/from16 v0, v78

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v78

    if-eqz v78, :cond_16

    :cond_7
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")|(?:(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")[\\s\\,\\.]{0,2})?(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    :goto_3
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")[\\s\\,\\.]{0,2})?(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")(?:[\\.\\,\\s]|(?:\\&nbsp;)){1,2}(?:(?:\\&ndash;)|[\\-\\~\u2013])"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const-string v78, ""

    move-object/from16 v0, v44

    move-object/from16 v1, v78

    if-eq v0, v1, :cond_8

    const-string v78, "z/z"

    move-object/from16 v0, v78

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v78

    if-eqz v78, :cond_17

    :cond_8
    move-object/from16 v36, v62

    :goto_4
    const-string v78, "z/z"

    move-object/from16 v0, v78

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v78

    if-eqz v78, :cond_18

    move-object/from16 v35, v65

    :goto_5
    const/16 v78, 0x1

    move/from16 v0, p2

    move/from16 v1, v78

    if-ne v0, v1, :cond_19

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-boolean v78, Lcom/android/email/ViewPatternMatching;->enablePatternLocation:Z

    if-eqz v78, :cond_9

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_9
    sget-boolean v78, Lcom/android/email/ViewPatternMatching;->enablePatternCalendar:Z

    if-eqz v78, :cond_a

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_a
    sget-boolean v78, Lcom/android/email/ViewPatternMatching;->enablePatternCalendarKeyword:Z

    if-eqz v78, :cond_b

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_b
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "|(?i)(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    sget-object v79, Lcom/android/email/ViewPatternMatching;->OWN_WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual/range {v79 .. v79}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    sget-object v79, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual/range {v79 .. v79}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-boolean v78, Lcom/android/email/ViewPatternMatching;->enablePatternPhone:Z

    if-eqz v78, :cond_c

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_c
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v72

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    const-string v60, ".*(?:(?:\\&ndash;)|[\\-\\~\u2013]).*"

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:(?:\\&nbsp;)|\\s){0,2}(?:(?:\\&ndash;)|[\\-\\~\u2013])[\\s]?(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")?"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "(?:[\\.\\,\\s]|(?:\\&nbsp;)){0,2}(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:(?:\\&nbsp;)|\\s){0,2}(?:(?:\\&ndash;)|[\\-\\~\u2013])[\\s]?"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:[\\.\\,\\s]|(?:\\&nbsp;)){1,2}(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    invoke-static/range {v78 .. v78}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v24

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:[\\.\\,\\s]|(?:\\&nbsp;)){1,2}(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")?"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "(?:[\\.\\,\\s]|(?:\\&nbsp;)){0,2}(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    invoke-static/range {v78 .. v78}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v25

    const/16 v78, 0x1

    move/from16 v0, p2

    move/from16 v1, v78

    if-ne v0, v1, :cond_f

    const/16 v20, 0x0

    const-string v78, "<body>"

    move-object/from16 v0, p1

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_d

    const-string v78, "<Body>"

    move-object/from16 v0, p1

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    :cond_d
    if-nez v20, :cond_e

    const-string v78, "<BODY>"

    move-object/from16 v0, p1

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    :cond_e
    move/from16 v0, v20

    move/from16 v1, v16

    if-le v0, v1, :cond_f

    move/from16 v16, v20

    :cond_f
    :goto_7
    invoke-virtual/range {v15 .. v16}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v78

    if-eqz v78, :cond_10

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    const/16 v27, 0x0

    const/16 v30, 0x0

    const/16 v19, 0x0

    const/4 v3, 0x0

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v74

    sub-long v78, v74, v72

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/ViewPatternMatching;->nTimeout:I

    move/from16 v80, v0

    move/from16 v0, v80

    int-to-long v0, v0

    move-wide/from16 v80, v0

    cmp-long v78, v78, v80

    if-lez v78, :cond_1e

    const-string v78, "Email"

    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "reloadUiFromBody : timeout="

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    invoke-static/range {v78 .. v79}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v15, v0, v14}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->length()I

    move-result v78

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v79

    sub-int v78, v78, v79

    sput v78, Lcom/android/email/ViewPatternMatching;->mCurrentPos:I

    :cond_10
    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const/16 v78, 0x0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->length()I

    move-result v79

    move-object/from16 v0, v29

    move/from16 v1, v78

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const-string v78, "Email"

    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "reloadUiFromBody : time1=["

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v80

    sub-long v80, v80, v72

    invoke-virtual/range {v79 .. v81}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, "]"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v80

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    invoke-static/range {v78 .. v79}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    const-string v78, "</body></html>"

    move-object/from16 v0, v28

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v78, 0x0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->length()I

    move-result v79

    move-object/from16 v0, v28

    move/from16 v1, v78

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    if-eqz v4, :cond_11

    sget v78, Lcom/android/email/ViewPatternMatching;->mCurrentPos:I

    move/from16 v0, v78

    move/from16 v1, p3

    if-gt v0, v1, :cond_12

    :cond_11
    const/16 v78, 0x0

    sput v78, Lcom/android/email/ViewPatternMatching;->mCurrentPos:I

    :cond_12
    return-object v22

    :cond_13
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "|"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v49

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    goto/16 :goto_0

    :cond_14
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "|"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "|"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "|"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    goto/16 :goto_1

    :cond_15
    move-object/from16 v39, v40

    goto/16 :goto_2

    :cond_16
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")|(?:(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")[\\s\\,\\.]{0,2})?(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_3

    :cond_17
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_4

    :cond_18
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "|"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_5

    :cond_19
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?i)(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    sget-object v79, Lcom/android/email/ViewPatternMatching;->OWN_WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual/range {v79 .. v79}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-boolean v78, Lcom/android/email/ViewPatternMatching;->enablePatternLocation:Z

    if-eqz v78, :cond_1a

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_1a
    sget-boolean v78, Lcom/android/email/ViewPatternMatching;->enablePatternCalendar:Z

    if-eqz v78, :cond_1b

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_1b
    sget-boolean v78, Lcom/android/email/ViewPatternMatching;->enablePatternCalendarKeyword:Z

    if-eqz v78, :cond_1c

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_1c
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    sget-object v79, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual/range {v79 .. v79}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-boolean v78, Lcom/android/email/ViewPatternMatching;->enablePatternPhone:Z

    if-eqz v78, :cond_1d

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_1d
    const-string v78, "|(?=[\\w]{512,})"

    move-object/from16 v0, v78

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_6

    :cond_1e
    move-object/from16 v0, v77

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_20

    const/16 v17, 0x0

    const-string v78, "</a>"

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v79

    move-object/from16 v0, p1

    move-object/from16 v1, v78

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v17

    if-nez v17, :cond_1f

    const-string v78, "</A>"

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v79

    move-object/from16 v0, p1

    move-object/from16 v1, v78

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v17

    :cond_1f
    if-eqz v17, :cond_f

    add-int/lit8 v16, v17, 0x4

    goto/16 :goto_7

    :cond_20
    move-object/from16 v0, v76

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v78

    if-nez v78, :cond_f

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?i)"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    sget-object v79, Lcom/android/email/ViewPatternMatching;->OWN_WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual/range {v79 .. v79}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v78

    if-nez v78, :cond_21

    sget-object v78, Lcom/android/email/ViewPatternMatching;->OWN_WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual/range {v78 .. v78}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_28

    :cond_21
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    add-int/lit8 v78, v7, 0x1

    move/from16 v0, v78

    move/from16 v1, v21

    if-ge v0, v1, :cond_22

    add-int/lit8 v78, v7, 0x1

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v78

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    const-string v78, "[\\.]"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    move-result v78

    if-nez v78, :cond_f

    :cond_22
    :goto_8
    sget-object v78, Lcom/android/email/ViewPatternMatching;->WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

    move-object/from16 v0, v78

    invoke-virtual {v0, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/Matcher;->find()Z

    move-result v78

    if-eqz v78, :cond_27

    const-string v27, ""

    :cond_23
    :goto_9
    if-eqz v27, :cond_24

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v78

    if-nez v78, :cond_24

    if-eqz v11, :cond_24

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v78

    if-lez v78, :cond_24

    const-string v78, ":"

    move-object/from16 v0, v78

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/16 v78, -0x1

    move/from16 v0, v78

    if-eq v10, v0, :cond_24

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v79, 0x0

    move/from16 v0, v79

    invoke-virtual {v11, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual {v11, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_24
    if-nez v3, :cond_25

    const-string v78, "<a href=\"%s\">%s</a>"

    const/16 v79, 0x2

    move/from16 v0, v79

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v79, v0

    const/16 v80, 0x0

    new-instance v81, Ljava/lang/StringBuilder;

    invoke-direct/range {v81 .. v81}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v81

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    move-object/from16 v0, v81

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    invoke-virtual/range {v81 .. v81}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    aput-object v81, v79, v80

    const/16 v80, 0x1

    aput-object v14, v79, v80

    invoke-static/range {v78 .. v79}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v28

    invoke-virtual {v15, v0, v8}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    :cond_25
    if-lez v19, :cond_5e

    const/16 v71, 0x0

    const/4 v9, 0x0

    :goto_a
    move/from16 v0, v19

    if-ge v9, v0, :cond_5e

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v78

    if-eqz v78, :cond_5d

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v14

    const-string v78, "test"

    move-object/from16 v0, v29

    move-object/from16 v1, v78

    invoke-virtual {v15, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v71

    :cond_26
    :goto_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_27
    const-string v27, "http://"

    goto/16 :goto_9

    :cond_28
    sget-boolean v78, Lcom/android/email/ViewPatternMatching;->enablePatternCalendar:Z

    if-eqz v78, :cond_2b

    move-object/from16 v0, v34

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_2b

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v30

    add-int/lit8 v7, v30, 0x1e

    move/from16 v0, v21

    if-ge v0, v7, :cond_29

    add-int/lit8 v7, v21, -0x1

    :cond_29
    :try_start_1
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, v24

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    const/16 v18, 0x0

    const-string v78, "&n"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_2a

    const/16 v18, 0x8

    :cond_2a
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v78

    if-eqz v78, :cond_f

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v78

    add-int/lit8 v79, v18, 0x4

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_f

    add-int/lit8 v19, v19, 0x1

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const/16 v79, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v80

    move-object/from16 v0, v57

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    const-string v27, "calendar:T6:"

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v78

    add-int v16, v30, v78

    goto/16 :goto_9

    :catch_0
    move-exception v6

    goto/16 :goto_7

    :cond_2b
    sget-boolean v78, Lcom/android/email/ViewPatternMatching;->enablePatternCalendar:Z

    if-eqz v78, :cond_3f

    move-object/from16 v0, v33

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_3f

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v78, 0x5

    move/from16 v0, v30

    move/from16 v1, v78

    if-lt v0, v1, :cond_f

    const/16 v78, 0x8

    move/from16 v0, v30

    move/from16 v1, v78

    if-ge v0, v1, :cond_2c

    const/16 v78, 0x0

    const/16 v79, 0x2

    :try_start_2
    move/from16 v0, v78

    move/from16 v1, v79

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    const-string v78, "0(\\s|\\/|\\-)"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v78

    if-nez v78, :cond_f

    const-string v78, "00"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v78

    if-nez v78, :cond_f

    add-int/lit8 v78, v30, -0x2

    move/from16 v0, v78

    move/from16 v1, v30

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    const-string v78, "(\\s|\\/|\\-)0"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v78

    if-nez v78, :cond_f

    const-string v78, "00"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v78

    if-nez v78, :cond_f

    :cond_2c
    const/16 v78, 0xa

    move/from16 v0, v30

    move/from16 v1, v78

    if-ge v0, v1, :cond_2e

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    add-int/lit8 v78, v7, 0x1

    move/from16 v0, v78

    move/from16 v1, v21

    if-ge v0, v1, :cond_2d

    add-int/lit8 v78, v7, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v78

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    const-string v78, "\\d"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v78

    if-nez v78, :cond_f

    :cond_2d
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    add-int/lit8 v78, v7, -0x1

    const/16 v79, 0x1

    move/from16 v0, v78

    move/from16 v1, v79

    if-le v0, v1, :cond_2e

    add-int/lit8 v78, v7, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v78

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    const-string v78, "\\w"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v78

    if-nez v78, :cond_f

    :cond_2e
    move-object/from16 v57, v14

    invoke-virtual/range {v57 .. v57}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v78

    if-eqz v78, :cond_31

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_c
    invoke-virtual/range {v57 .. v57}, Ljava/lang/String;->length()I

    move-result v78

    move/from16 v0, v78

    if-ge v10, v0, :cond_30

    move-object/from16 v0, v57

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v78

    const/16 v79, 0x39

    move/from16 v0, v78

    move/from16 v1, v79

    if-gt v0, v1, :cond_2f

    move-object/from16 v0, v57

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v78

    const/16 v79, 0x30

    move/from16 v0, v78

    move/from16 v1, v79

    if-lt v0, v1, :cond_2f

    add-int/lit8 v5, v5, 0x1

    :cond_2f
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_30
    const/16 v78, 0x6

    move/from16 v0, v78

    if-lt v5, v0, :cond_f

    :cond_31
    const-string v78, " 0 "

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-nez v78, :cond_f

    const-string v78, "/0/"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-nez v78, :cond_f

    const-string v78, "-0-"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-nez v78, :cond_f

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    move-result v30

    add-int/lit8 v7, v30, 0x12

    move/from16 v0, v21

    if-ge v0, v7, :cond_32

    add-int/lit8 v7, v21, -0x1

    :cond_32
    :try_start_3
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    const/16 v78, 0x0

    move-object/from16 v0, v57

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v78

    const/16 v79, 0x3a

    move/from16 v0, v78

    move/from16 v1, v79

    if-eq v0, v1, :cond_f

    const/16 v78, 0x0

    move-object/from16 v0, v57

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v78

    const/16 v79, 0x2d

    move/from16 v0, v78

    move/from16 v1, v79

    if-eq v0, v1, :cond_f

    const-string v27, "calendar:T2:"

    move-object/from16 v0, v25

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    const/16 v18, 0x0

    const-string v78, "&n"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_33

    const/16 v18, 0x8

    :cond_33
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v78

    if-eqz v78, :cond_3c

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v78

    add-int/lit8 v79, v18, 0x4

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_3c

    add-int/lit8 v19, v19, 0x1

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v16, v30, v78

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const/16 v79, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v80

    move-object/from16 v0, v57

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    const-string v27, "calendar:T7:"

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v30, v30, v78

    add-int/lit8 v7, v30, 0x1e

    move/from16 v0, v21

    if-ge v0, v7, :cond_34

    add-int/lit8 v7, v21, -0x1

    :cond_34
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    const/16 v31, 0x0

    sub-int v78, v7, v30

    const/16 v79, 0x3

    move/from16 v0, v78

    move/from16 v1, v79

    if-le v0, v1, :cond_35

    const/16 v78, 0x0

    const/16 v79, 0x2

    move-object/from16 v0, v57

    move/from16 v1, v78

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    :cond_35
    const-string v78, "&"

    move-object/from16 v0, v31

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_36

    sub-int v78, v7, v30

    const/16 v79, 0xa

    move/from16 v0, v78

    move/from16 v1, v79

    if-le v0, v1, :cond_36

    const/16 v78, 0x0

    const/16 v79, 0x9

    move-object/from16 v0, v57

    move/from16 v1, v78

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    :cond_36
    if-eqz v31, :cond_23

    move-object/from16 v0, v31

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v78

    if-eqz v78, :cond_23

    const/16 v23, 0x0

    invoke-static/range {v59 .. v59}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    const-string v78, "&n"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_38

    const/16 v18, 0x8

    :goto_d
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v78

    if-eqz v78, :cond_39

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v78

    add-int/lit8 v79, v18, 0x4

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_39

    add-int/lit8 v19, v19, 0x1

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v16, v30, v78

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const/16 v79, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v80

    move-object/from16 v0, v57

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    const-string v27, "calendar:T7:"

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v30, v30, v78

    add-int/lit8 v7, v30, 0x1e

    move/from16 v0, v21

    if-ge v0, v7, :cond_37

    add-int/lit8 v7, v21, -0x1

    :cond_37
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    goto/16 :goto_9

    :cond_38
    const/16 v18, 0x0

    goto :goto_d

    :cond_39
    const/16 v70, 0x0

    invoke-static/range {v58 .. v58}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v78

    if-eqz v78, :cond_23

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v78

    add-int/lit8 v79, v18, 0x4

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_23

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const/16 v79, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v80

    move-object/from16 v0, v57

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v30, v30, v78

    add-int/lit8 v7, v30, 0x1e

    move/from16 v0, v21

    if-ge v0, v7, :cond_3a

    add-int/lit8 v7, v21, -0x1

    :cond_3a
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, v25

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    const-string v78, "&n"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_3b

    const/16 v18, 0x8

    :goto_e
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v78

    if-eqz v78, :cond_23

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v78

    add-int/lit8 v79, v18, 0x4

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_23

    add-int/lit8 v19, v19, 0x2

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v16, v30, v78

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const/16 v79, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v80

    move-object/from16 v0, v57

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    const-string v27, "calendar:T3:"

    goto/16 :goto_9

    :cond_3b
    const/16 v18, 0x0

    goto :goto_e

    :cond_3c
    const/16 v23, 0x0

    invoke-static/range {v58 .. v58}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    add-int/lit8 v7, v30, 0x1e

    move/from16 v0, v21

    if-ge v0, v7, :cond_3d

    add-int/lit8 v7, v21, -0x1

    :cond_3d
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, v23

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    const-string v78, "&n"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_3e

    const/16 v18, 0x8

    :goto_f
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v78

    if-eqz v78, :cond_23

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v78

    add-int/lit8 v79, v18, 0x4

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_23

    add-int/lit8 v19, v19, 0x1

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v16, v30, v78

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const/16 v79, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v80

    move-object/from16 v0, v57

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    const-string v27, "calendar:T2:"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    goto/16 :goto_9

    :cond_3e
    const/16 v18, 0x0

    goto :goto_f

    :cond_3f
    sget-boolean v78, Lcom/android/email/ViewPatternMatching;->enablePatternCalendar:Z

    if-eqz v78, :cond_49

    move-object/from16 v0, v36

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_49

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->start()I

    move-result v30

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    const/16 v78, 0x2

    move/from16 v0, v30

    move/from16 v1, v78

    if-le v0, v1, :cond_40

    add-int/lit8 v78, v30, -0x1

    :try_start_4
    move-object/from16 v0, p1

    move/from16 v1, v78

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    const-string v78, "[\\w\\d\\-@#:]"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v78

    if-nez v78, :cond_f

    :cond_40
    add-int/lit8 v78, v7, 0x2

    move/from16 v0, v78

    move/from16 v1, v21

    if-ge v0, v1, :cond_41

    add-int/lit8 v78, v7, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v78

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    const-string v78, "([\\.:]\\d)|(\\d.)"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move-result v78

    if-nez v78, :cond_f

    :cond_41
    :goto_10
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v30

    add-int/lit8 v7, v30, 0x1e

    move/from16 v0, v21

    if-ge v0, v7, :cond_42

    add-int/lit8 v7, v21, -0x1

    :cond_42
    move-object v11, v14

    const-string v27, "calendar:T1:"

    :try_start_5
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    const/16 v31, 0x0

    const/16 v18, 0x0

    sub-int v78, v7, v30

    const/16 v79, 0x3

    move/from16 v0, v78

    move/from16 v1, v79

    if-le v0, v1, :cond_43

    const/16 v78, 0x0

    const/16 v79, 0x2

    move-object/from16 v0, v57

    move/from16 v1, v78

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    :cond_43
    const-string v78, "&"

    move-object/from16 v0, v31

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_44

    sub-int v78, v7, v30

    const/16 v79, 0xa

    move/from16 v0, v78

    move/from16 v1, v79

    if-le v0, v1, :cond_44

    const/16 v78, 0x0

    const/16 v79, 0x9

    move-object/from16 v0, v57

    move/from16 v1, v78

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    :cond_44
    if-eqz v31, :cond_47

    move-object/from16 v0, v31

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v78

    if-eqz v78, :cond_47

    const/16 v23, 0x0

    const/4 v13, 0x0

    invoke-static/range {v59 .. v59}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    const-string v78, "&n"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_45

    const/16 v18, 0x8

    :cond_45
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v78

    if-eqz v78, :cond_47

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v78

    add-int/lit8 v79, v18, 0x4

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_47

    add-int/lit8 v19, v19, 0x1

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v16, v30, v78

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const/16 v79, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v80

    move-object/from16 v0, v57

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    const-string v27, "calendar:T1:"

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v30, v30, v78

    add-int/lit8 v7, v30, 0x1e

    move/from16 v0, v21

    if-ge v0, v7, :cond_46

    add-int/lit8 v7, v21, -0x1

    :cond_46
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    :cond_47
    move-object/from16 v0, v24

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    const-string v78, "&n"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_48

    const/16 v18, 0x8

    :goto_11
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v78

    if-eqz v78, :cond_23

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v78

    add-int/lit8 v79, v18, 0x4

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_23

    add-int/lit8 v19, v19, 0x1

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v16, v30, v78

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const/16 v79, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v80

    move-object/from16 v0, v57

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    const-string v27, "calendar:T4:"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_9

    :cond_48
    const/16 v18, 0x0

    goto :goto_11

    :cond_49
    sget-boolean v78, Lcom/android/email/ViewPatternMatching;->enablePatternCalendarKeyword:Z

    if-eqz v78, :cond_52

    move-object/from16 v0, v35

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_52

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v30

    add-int/lit8 v7, v30, 0x12

    move/from16 v0, v21

    if-ge v0, v7, :cond_4a

    add-int/lit8 v7, v21, -0x1

    :cond_4a
    const-string v27, "calendar:T5:"

    move-object v11, v14

    :try_start_6
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    const/16 v31, 0x0

    const/16 v18, 0x0

    sub-int v78, v7, v30

    const/16 v79, 0x3

    move/from16 v0, v78

    move/from16 v1, v79

    if-le v0, v1, :cond_4b

    const/16 v78, 0x0

    const/16 v79, 0x2

    move-object/from16 v0, v57

    move/from16 v1, v78

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    :cond_4b
    const-string v78, "&"

    move-object/from16 v0, v31

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_4c

    sub-int v78, v7, v30

    const/16 v79, 0xa

    move/from16 v0, v78

    move/from16 v1, v79

    if-le v0, v1, :cond_4c

    const/16 v78, 0x0

    const/16 v79, 0x9

    move-object/from16 v0, v57

    move/from16 v1, v78

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    :cond_4c
    if-eqz v31, :cond_51

    move-object/from16 v0, v31

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v78

    if-nez v78, :cond_51

    move-object/from16 v0, v25

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    const-string v78, "&n"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_4d

    const/16 v18, 0x8

    :cond_4d
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v78

    if-eqz v78, :cond_4f

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v78

    add-int/lit8 v79, v18, 0x4

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_4f

    add-int/lit8 v19, v19, 0x1

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v16, v30, v78

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const/16 v79, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v80

    move-object/from16 v0, v57

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v30, v30, v78

    add-int/lit8 v7, v30, 0x1e

    move/from16 v0, v21

    if-ge v0, v7, :cond_4e

    add-int/lit8 v7, v21, -0x1

    :cond_4e
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    :cond_4f
    const/16 v23, 0x0

    const/4 v13, 0x0

    invoke-static/range {v59 .. v59}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    const-string v78, "&n"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_50

    const/16 v18, 0x8

    :goto_12
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v78

    if-eqz v78, :cond_23

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v78

    add-int/lit8 v79, v18, 0x4

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_23

    add-int/lit8 v19, v19, 0x1

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v16, v30, v78

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const/16 v79, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v80

    move-object/from16 v0, v57

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    const-string v27, "calendar:T5:"

    goto/16 :goto_9

    :cond_50
    const/16 v18, 0x0

    goto :goto_12

    :cond_51
    const/16 v23, 0x0

    const/4 v13, 0x0

    invoke-static/range {v59 .. v59}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v78

    if-eqz v78, :cond_23

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v78

    const/16 v79, 0x4

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_23

    add-int/lit8 v19, v19, 0x1

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v16, v30, v78

    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const/16 v79, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v80

    move-object/from16 v0, v57

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    const-string v27, "calendar:T5:"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_9

    :cond_52
    sget-object v78, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual/range {v78 .. v78}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_53

    const-string v27, "mailto:"

    goto/16 :goto_9

    :cond_53
    sget-boolean v78, Lcom/android/email/ViewPatternMatching;->enablePatternPhone:Z

    if-eqz v78, :cond_58

    move-object/from16 v0, v56

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_58

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->start()I

    move-result v30

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    :try_start_7
    const-string v78, ".0."

    move-object/from16 v0, v78

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-nez v78, :cond_f

    const/16 v78, 0x0

    move/from16 v0, v78

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v78

    const/16 v79, 0x2d

    move/from16 v0, v78

    move/from16 v1, v79

    if-eq v0, v1, :cond_f

    move-object/from16 v57, v14

    invoke-virtual/range {v57 .. v57}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v78

    if-nez v78, :cond_f

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_13
    invoke-virtual/range {v57 .. v57}, Ljava/lang/String;->length()I

    move-result v78

    move/from16 v0, v78

    if-ge v10, v0, :cond_55

    move-object/from16 v0, v57

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v78

    const/16 v79, 0x39

    move/from16 v0, v78

    move/from16 v1, v79

    if-gt v0, v1, :cond_54

    move-object/from16 v0, v57

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v78

    const/16 v79, 0x30

    move/from16 v0, v78

    move/from16 v1, v79

    if-lt v0, v1, :cond_54

    add-int/lit8 v5, v5, 0x1

    :cond_54
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    :cond_55
    const/16 v78, 0x7

    move/from16 v0, v78

    if-lt v5, v0, :cond_f

    const/16 v78, 0x2

    move/from16 v0, v30

    move/from16 v1, v78

    if-le v0, v1, :cond_56

    add-int/lit8 v78, v30, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v78

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    const-string v78, "[\\w\\d\\-@#]"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v78

    if-nez v78, :cond_f

    :cond_56
    add-int/lit8 v78, v7, 0x1

    move/from16 v0, v78

    move/from16 v1, v21

    if-ge v0, v1, :cond_57

    add-int/lit8 v78, v7, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v78

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    const-string v78, "\\w|\\d"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v78

    if-nez v78, :cond_f

    const-string v78, "<"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v78

    if-nez v78, :cond_57

    const-string v78, "[\\w\\d\\-:@]"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result v78

    if-nez v78, :cond_f

    :cond_57
    :goto_14
    const-string v27, "tel:"

    goto/16 :goto_9

    :cond_58
    move-object/from16 v0, v51

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_59

    const-string v27, "geo:0,0?q="

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_9

    :cond_59
    move-object/from16 v0, v52

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_5c

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v78

    const/16 v79, 0x10

    move/from16 v0, v78

    move/from16 v1, v79

    if-lt v0, v1, :cond_f

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->start()I

    move-result v30

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    if-eqz v30, :cond_5a

    const/16 v78, 0x0

    :try_start_8
    move/from16 v0, v78

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v78

    const/16 v79, 0x20

    move/from16 v0, v78

    move/from16 v1, v79

    if-eq v0, v1, :cond_5a

    add-int/lit8 v78, v30, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v78

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    const-string v78, ">"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v78

    if-nez v78, :cond_5a

    const-string v78, "[\\w\\d]"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v78

    if-nez v78, :cond_f

    :cond_5a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v78

    add-int/lit8 v78, v78, -0x2

    move/from16 v0, v78

    if-ge v7, v0, :cond_5b

    add-int/lit8 v78, v7, -0x1

    move/from16 v0, v78

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v78

    const/16 v79, 0x20

    move/from16 v0, v78

    move/from16 v1, v79

    if-eq v0, v1, :cond_5b

    add-int/lit8 v78, v7, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v78

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    const-string v78, "<"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v78

    if-nez v78, :cond_5b

    const-string v78, "[\\w\\d]"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-result v78

    if-nez v78, :cond_f

    :cond_5b
    :goto_15
    const-string v27, "geo:0,0?q="

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_9

    :cond_5c
    const/4 v3, 0x1

    goto/16 :goto_9

    :cond_5d
    move/from16 v0, v71

    move/from16 v1, v16

    if-eq v0, v1, :cond_26

    const/16 v78, 0x5

    move/from16 v0, v16

    move/from16 v1, v78

    if-le v0, v1, :cond_26

    :try_start_9
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    add-int/lit8 v78, v16, -0x5

    move/from16 v0, v78

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v78

    if-eqz v78, :cond_26

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v71

    sub-int v78, v71, v16

    invoke-static/range {v78 .. v78}, Ljava/lang/Math;->abs(I)I

    move-result v78

    const/16 v79, 0x2

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_26

    const-string v78, "test"

    move-object/from16 v0, v29

    move-object/from16 v1, v78

    invoke-virtual {v15, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move/from16 v16, v71

    goto/16 :goto_b

    :cond_5e
    const/16 v19, 0x0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->length()I

    move-result v78

    sput v78, Lcom/android/email/ViewPatternMatching;->mCurrentPos:I

    goto/16 :goto_7

    :catch_1
    move-exception v78

    goto/16 :goto_b

    :catch_2
    move-exception v78

    goto :goto_15

    :catch_3
    move-exception v78

    goto/16 :goto_14

    :catch_4
    move-exception v78

    goto/16 :goto_9

    :catch_5
    move-exception v78

    goto/16 :goto_9

    :catch_6
    move-exception v78

    goto/16 :goto_10

    :catch_7
    move-exception v78

    goto/16 :goto_9

    :catch_8
    move-exception v78

    goto/16 :goto_9

    :catch_9
    move-exception v78

    goto/16 :goto_8
.end method

.method public pmFindPos()I
    .locals 1

    sget v0, Lcom/android/email/ViewPatternMatching;->mCurrentPos:I

    return v0
.end method

.method public pmInit(Landroid/content/Context;IJ)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    if-gez p2, :cond_0

    const/4 p2, 0x7

    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v2, :cond_1

    sput-boolean v2, Lcom/android/email/ViewPatternMatching;->enablePatternPhone:Z

    :cond_1
    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    sput-boolean v2, Lcom/android/email/ViewPatternMatching;->enablePatternCalendar:Z

    :cond_2
    and-int/lit8 v0, p2, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    sput-boolean v2, Lcom/android/email/ViewPatternMatching;->enablePatternCalendarKeyword:Z

    :cond_3
    and-int/lit8 v0, p2, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    sput-boolean v2, Lcom/android/email/ViewPatternMatching;->enablePatternLocation:Z

    :cond_4
    iput-wide p3, p0, Lcom/android/email/ViewPatternMatching;->mTimeOfMessage:J

    const/4 v0, 0x0

    sput v0, Lcom/android/email/ViewPatternMatching;->mCurrentPos:I

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/android/email/ViewPatternMatching;->nTimeout:I

    return-void
.end method

.method public pmSettimeout(I)V
    .locals 0

    iput p1, p0, Lcom/android/email/ViewPatternMatching;->nTimeout:I

    return-void
.end method
