.class Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;
.super Landroid/os/AsyncTask;
.source "AccountSettingsXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAccountListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsXL;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->doInBackground([Ljava/lang/Long;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)[Ljava/lang/Object;
    .locals 14

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "emailAddress!=\'snc@snc.snc\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v0, 0x0

    :try_start_0
    new-array v4, v1, [Landroid/preference/PreferenceActivity$Header;

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    move-object v2, v6

    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "@"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "[.]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v6, v6, v11

    const-string v11, "snc"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "snc.snc"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_1
    const-string v6, "hotmail"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "msn"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "live"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_2
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-nez v6, :cond_3

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v6, 0x1

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v11, Landroid/text/TextPaint;

    invoke-direct {v11}, Landroid/text/TextPaint;-><init>()V

    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v12}, Lcom/android/email/activity/setup/AccountSettingsXL;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4

    const/high16 v12, 0x433e

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v6, v11, v12, v13}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    :goto_1
    const/4 v11, 0x2

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v12}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-wide v9, v12, Landroid/preference/PreferenceActivity$Header;->id:J

    iput-object v6, v12, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iput-object v11, v12, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    const-class v6, Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v12, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-static {v9, v10, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->buildArguments(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v12, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    const/4 v6, 0x1

    if-ne v1, v6, :cond_7

    invoke-static {}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$600()Ljava/util/HashSet;

    move-result-object v1

    iget-wide v9, v12, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f020029

    iput v1, v12, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    :goto_2
    add-int/lit8 v1, v0, 0x1

    aput-object v12, v4, v0

    move v0, v1

    goto/16 :goto_0

    :cond_4
    const/high16 v12, 0x4302

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v6, v11, v12, v13}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :cond_6
    const v1, 0x7f020024

    :try_start_1
    iput v1, v12, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    iput v1, v12, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    goto :goto_2

    :cond_8
    invoke-interface {v3, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v1, v0

    :cond_9
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "@"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v9, "[.]"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v5, v5, v10

    const-string v10, "snc"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "snc.snc"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_a
    const-string v5, "hotmail"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "msn"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "live"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v9, v5, v7

    if-nez v9, :cond_b

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v2, v0

    goto :goto_3

    :cond_b
    const/4 v9, 0x1

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v11}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-wide v5, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    iput-object v9, v11, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iput-object v10, v11, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    const-class v9, Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v11, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-static {v5, v6, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->buildArguments(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    sget-boolean v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    const/4 v5, 0x1

    if-ne v0, v5, :cond_d

    invoke-static {}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$600()Ljava/util/HashSet;

    move-result-object v0

    iget-wide v5, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f020029

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    :goto_4
    add-int/lit8 v0, v1, 0x1

    aput-object v11, v4, v1

    :goto_5
    move v1, v0

    goto/16 :goto_3

    :cond_c
    const v0, 0x7f020024

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    goto :goto_4

    :cond_d
    const/4 v0, 0x0

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->iconRes:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_e
    if-eqz v3, :cond_f

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_f
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    return-object v0

    :cond_10
    move v0, v1

    goto :goto_5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, [Landroid/preference/PreferenceActivity$Header;

    move-object v1, v2

    check-cast v1, [Landroid/preference/PreferenceActivity$Header;

    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-static {v2, v1}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$902(Lcom/android/email/activity/setup/AccountSettingsXL;[Landroid/preference/PreferenceActivity$Header;)[Landroid/preference/PreferenceActivity$Header;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateHeaders()V

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    const-wide/16 v3, -0x1

    invoke-static {v2, v3, v4}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$1002(Lcom/android/email/activity/setup/AccountSettingsXL;J)J

    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v3}, Lcom/android/email/activity/setup/AccountSettingsXL;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/EmailUtility;->getUnreadTotalCount(Landroid/content/Context;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/email/BadgeManager;->updateBadgeProvider(Landroid/content/Context;I)V

    goto :goto_0
.end method
