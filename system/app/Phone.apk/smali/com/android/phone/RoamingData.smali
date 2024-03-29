.class public Lcom/android/phone/RoamingData;
.super Ljava/lang/Object;
.source "RoamingData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RoamingData$DatabaseHelper;
    }
.end annotation


# static fields
.field private static connectIdProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static countryIdProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sidProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field connectProjectionMap:[Ljava/lang/String;

.field countryProjectionMap:[Ljava/lang/String;

.field db:Landroid/database/sqlite/SQLiteDatabase;

.field mOpenHelper:Lcom/android/phone/RoamingData$DatabaseHelper;

.field private roamingContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/RoamingData;->countryIdProjectionMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/RoamingData;->connectIdProjectionMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/RoamingData;->sidProjectionMap:Ljava/util/HashMap;

    sget-object v0, Lcom/android/phone/RoamingData;->countryIdProjectionMap:Ljava/util/HashMap;

    const-string v1, "country_num"

    const-string v2, "country_num"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/RoamingData;->countryIdProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/RoamingData;->countryIdProjectionMap:Ljava/util/HashMap;

    const-string v1, "name_kor"

    const-string v2, "name_kor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/RoamingData;->connectIdProjectionMap:Ljava/util/HashMap;

    const-string v1, "connect_num"

    const-string v2, "connect_num"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/RoamingData;->connectIdProjectionMap:Ljava/util/HashMap;

    const-string v1, "country_name"

    const-string v2, "country_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/RoamingData;->connectIdProjectionMap:Ljava/util/HashMap;

    const-string v1, "country_name_eng"

    const-string v2, "country_name_eng"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/RoamingData;->connectIdProjectionMap:Ljava/util/HashMap;

    const-string v1, "deleteable"

    const-string v2, "deleteable"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/RoamingData;->connectIdProjectionMap:Ljava/util/HashMap;

    const-string v1, "country_code"

    const-string v2, "country_code"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/RoamingData;->sidProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/RoamingData;->sidProjectionMap:Ljava/util/HashMap;

    const-string v1, "sid"

    const-string v2, "sid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/RoamingData;->sidProjectionMap:Ljava/util/HashMap;

    const-string v1, "connect_id"

    const-string v2, "connect_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "name_kor"

    aput-object v1, v0, v5

    const-string v1, "country_num"

    aput-object v1, v0, v6

    const-string v1, "chosung"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "simplify"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/phone/RoamingData;->countryProjectionMap:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "country_name"

    aput-object v1, v0, v3

    const-string v1, "country_name_eng"

    aput-object v1, v0, v4

    const-string v1, "connect_num"

    aput-object v1, v0, v5

    const-string v1, "_id"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/phone/RoamingData;->connectProjectionMap:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/RoamingData;->roamingContext:Landroid/content/Context;

    new-instance v0, Lcom/android/phone/RoamingData$DatabaseHelper;

    iget-object v1, p0, Lcom/android/phone/RoamingData;->roamingContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/RoamingData$DatabaseHelper;-><init>(Lcom/android/phone/RoamingData;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/RoamingData;->mOpenHelper:Lcom/android/phone/RoamingData$DatabaseHelper;

    iget-object v0, p0, Lcom/android/phone/RoamingData;->mOpenHelper:Lcom/android/phone/RoamingData$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/phone/RoamingData$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RoamingData;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/RoamingData;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/RoamingData;->roamingContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/RoamingData;->mOpenHelper:Lcom/android/phone/RoamingData$DatabaseHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RoamingData;->mOpenHelper:Lcom/android/phone/RoamingData$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/phone/RoamingData$DatabaseHelper;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/RoamingData;->mOpenHelper:Lcom/android/phone/RoamingData$DatabaseHelper;

    return-void
.end method

.method public getConnectNumBySid(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v2, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const/4 v8, 0x0

    const-string v1, "connect"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v1, Lcom/android/phone/RoamingData;->connectIdProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const-string v3, "_id = (select connect_id from sid where sid=?)"

    new-array v4, v2, [Ljava/lang/String;

    aput-object p1, v4, v10

    iget-object v1, p0, Lcom/android/phone/RoamingData;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-array v2, v2, [Ljava/lang/String;

    const-string v6, "connect_num"

    aput-object v6, v2, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v5, v8

    :cond_1
    :goto_0
    return-object v5

    :cond_2
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
