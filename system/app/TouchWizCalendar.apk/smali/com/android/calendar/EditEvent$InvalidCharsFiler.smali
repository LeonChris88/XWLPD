.class Lcom/android/calendar/EditEvent$InvalidCharsFiler;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvalidCharsFiler"
.end annotation


# instance fields
.field private mInvalidChars:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EditEvent;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EditEvent$InvalidCharsFiler;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/calendar/EditEvent$InvalidCharsFiler;->mInvalidChars:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/calendar/EditEvent$InvalidCharsFiler;->mInvalidChars:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/EditEvent$InvalidCharsFiler;->mInvalidChars:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const-string v1, ""

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
