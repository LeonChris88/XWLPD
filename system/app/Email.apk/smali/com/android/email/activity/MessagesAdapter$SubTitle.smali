.class Lcom/android/email/activity/MessagesAdapter$SubTitle;
.super Ljava/lang/Object;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubTitle"
.end annotation


# instance fields
.field childItemIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field subtitleId:Ljava/lang/String;

.field subtitleItemCount:Ljava/lang/String;

.field subtitleItemList:Ljava/lang/String;

.field subtitleItemListDate:Ljava/lang/String;

.field subtitleItemListSub:Ljava/lang/String;

.field subtitleListIsChecked:Z

.field subtitleListIsExpand:Z

.field subtitleListIsRead:I


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemListSub:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemListDate:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    iput-boolean v2, p0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsChecked:Z

    iput v2, p0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsRead:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessagesAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>()V

    return-void
.end method
