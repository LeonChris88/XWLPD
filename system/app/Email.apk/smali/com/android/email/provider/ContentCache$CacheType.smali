.class final enum Lcom/android/email/provider/ContentCache$CacheType;
.super Ljava/lang/Enum;
.source "ContentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/ContentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CacheType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/email/provider/ContentCache$CacheType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/email/provider/ContentCache$CacheType;

.field public static final enum HASH_MAP:Lcom/android/email/provider/ContentCache$CacheType;

.field public static final enum LRU:Lcom/android/email/provider/ContentCache$CacheType;

.field public static final enum NOT_INITIALIZED:Lcom/android/email/provider/ContentCache$CacheType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/email/provider/ContentCache$CacheType;

    const-string v1, "NOT_INITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/ContentCache$CacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/provider/ContentCache$CacheType;->NOT_INITIALIZED:Lcom/android/email/provider/ContentCache$CacheType;

    new-instance v0, Lcom/android/email/provider/ContentCache$CacheType;

    const-string v1, "HASH_MAP"

    invoke-direct {v0, v1, v3}, Lcom/android/email/provider/ContentCache$CacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/provider/ContentCache$CacheType;->HASH_MAP:Lcom/android/email/provider/ContentCache$CacheType;

    new-instance v0, Lcom/android/email/provider/ContentCache$CacheType;

    const-string v1, "LRU"

    invoke-direct {v0, v1, v4}, Lcom/android/email/provider/ContentCache$CacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/provider/ContentCache$CacheType;->LRU:Lcom/android/email/provider/ContentCache$CacheType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/email/provider/ContentCache$CacheType;

    sget-object v1, Lcom/android/email/provider/ContentCache$CacheType;->NOT_INITIALIZED:Lcom/android/email/provider/ContentCache$CacheType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/email/provider/ContentCache$CacheType;->HASH_MAP:Lcom/android/email/provider/ContentCache$CacheType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/email/provider/ContentCache$CacheType;->LRU:Lcom/android/email/provider/ContentCache$CacheType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/provider/ContentCache$CacheType;->$VALUES:[Lcom/android/email/provider/ContentCache$CacheType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/email/provider/ContentCache$CacheType;
    .locals 1

    const-class v0, Lcom/android/email/provider/ContentCache$CacheType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/ContentCache$CacheType;

    return-object v0
.end method

.method public static values()[Lcom/android/email/provider/ContentCache$CacheType;
    .locals 1

    sget-object v0, Lcom/android/email/provider/ContentCache$CacheType;->$VALUES:[Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v0}, [Lcom/android/email/provider/ContentCache$CacheType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/email/provider/ContentCache$CacheType;

    return-object v0
.end method
