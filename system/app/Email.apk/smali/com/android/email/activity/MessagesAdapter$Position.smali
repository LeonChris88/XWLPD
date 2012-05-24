.class Lcom/android/email/activity/MessagesAdapter$Position;
.super Ljava/lang/Object;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Position"
.end annotation


# instance fields
.field listPosition:I

.field parentIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/email/activity/MessagesAdapter$Position;->listPosition:I

    iput p2, p0, Lcom/android/email/activity/MessagesAdapter$Position;->parentIndex:I

    return-void
.end method
