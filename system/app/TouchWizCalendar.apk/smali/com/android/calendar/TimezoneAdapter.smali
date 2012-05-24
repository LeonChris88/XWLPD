.class public Lcom/android/calendar/TimezoneAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TimezoneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/TimezoneAdapter$TimezoneComparator;,
        Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/calendar/TimezoneAdapter$TimezoneRow;",
        ">;"
    }
.end annotation


# static fields
.field private static sTimezones:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/TimezoneAdapter$TimezoneRow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentTimezone:Ljava/lang/String;

.field private mShowingAll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f030031

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-boolean v1, p0, Lcom/android/calendar/TimezoneAdapter;->mShowingAll:Z

    iput-object p1, p0, Lcom/android/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/calendar/TimezoneAdapter;->mCurrentTimezone:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/calendar/TimezoneAdapter;->mShowingAll:Z

    invoke-virtual {p0}, Lcom/android/calendar/TimezoneAdapter;->showInitialTimezones()V

    return-void
.end method

.method public static loadFromResources(Landroid/content/res/Resources;)V
    .locals 9

    sget-object v4, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    if-nez v4, :cond_1

    const v4, 0x7f070021

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f070020

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v1

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    sput-object v4, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    array-length v4, v1

    array-length v5, v2

    if-eq v4, v5, :cond_0

    const-string v4, "TimezoneAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ids length ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") and labels length("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") should be equal but aren\'t."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    array-length v4, v1

    if-lez v4, :cond_1

    array-length v4, v2

    if-lez v4, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    sget-object v4, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    aget-object v5, v1, v0

    new-instance v6, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    aget-object v7, v1, v0

    aget-object v8, v2, v0

    invoke-direct {v6, v7, v8}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static reloadFromResources(Landroid/content/res/Resources;)V
    .locals 1

    sget-object v0, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    :cond_0
    invoke-static {p0}, Lcom/android/calendar/TimezoneAdapter;->loadFromResources(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public getAllTimezones()[[Ljava/lang/CharSequence;
    .locals 11

    const/4 v9, 0x2

    sget-object v10, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->size()I

    move-result v10

    filled-new-array {v9, v10}, [I

    move-result-object v9

    const-class v10, Ljava/lang/CharSequence;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Ljava/lang/CharSequence;

    new-instance v3, Ljava/util/ArrayList;

    sget-object v9, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v8, Ljava/util/ArrayList;

    sget-object v9, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v9, "id"

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "name"

    invoke-virtual {v5}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "offset"

    iget v10, v5, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mOffset:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/calendar/TimezoneAdapter$TimezoneComparator;

    const-string v9, "offset"

    invoke-direct {v0, v9}, Lcom/android/calendar/TimezoneAdapter$TimezoneComparator;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const/4 v9, 0x0

    aget-object v9, v6, v9

    const-string v10, "id"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    const/4 v9, 0x1

    aget-object v9, v6, v9

    const-string v10, "name"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v6
.end method

.method public getRowById(Ljava/lang/String;)I
    .locals 2

    sget-object v1, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/calendar/TimezoneAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0
.end method

.method public saveRecentTimezone(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x3

    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "preferences_recent_timezones"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v5, :cond_1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, ","

    invoke-static {v1, v3}, Lcom/android/calendar/Utils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "preferences_recent_timezones"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public showAllTimezones()V
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/calendar/TimezoneAdapter;->clear()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    invoke-virtual {p0, v1}, Lcom/android/calendar/TimezoneAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/calendar/TimezoneAdapter;->mShowingAll:Z

    return-void
.end method

.method public showInitialTimezones()V
    .locals 15

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v11, p0, Lcom/android/calendar/TimezoneAdapter;->mCurrentTimezone:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    iget-object v11, p0, Lcom/android/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v11, "preferences_recent_timezones"

    const/4 v12, 0x0

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    array-length v5, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v8, v0, v2

    invoke-virtual {v4, v8}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/TimezoneAdapter;->clear()V

    const-class v12, Lcom/android/calendar/TimezoneAdapter;

    monitor-enter v12

    :try_start_0
    iget-object v11, p0, Lcom/android/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11}, Lcom/android/calendar/TimezoneAdapter;->loadFromResources(Landroid/content/res/Resources;)V

    const-string v11, "GMT"

    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v11, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    sget-object v11, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    new-instance v13, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    invoke-virtual {v6}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v3, v14}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v3, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v11, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/calendar/TimezoneAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    :cond_3
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/calendar/TimezoneAdapter;->mShowingAll:Z

    return-void
.end method
