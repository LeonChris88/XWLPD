.class public Lcom/android/calendar/EditEvent$Attendee;
.super Ljava/lang/Object;
.source "EditEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Attendee"
.end annotation


# instance fields
.field mContactId:I

.field mEmail:Ljava/lang/String;

.field mName:Ljava/lang/String;

.field mStatus:I

.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EditEvent;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/calendar/EditEvent$Attendee;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/calendar/EditEvent$Attendee;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/calendar/EditEvent$Attendee;->mEmail:Ljava/lang/String;

    iput p4, p0, Lcom/android/calendar/EditEvent$Attendee;->mContactId:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/EditEvent$Attendee;->mStatus:I

    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/EditEvent;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EditEvent$Attendee;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/calendar/EditEvent$Attendee;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/calendar/EditEvent$Attendee;->mEmail:Ljava/lang/String;

    iput p4, p0, Lcom/android/calendar/EditEvent$Attendee;->mContactId:I

    iput p5, p0, Lcom/android/calendar/EditEvent$Attendee;->mStatus:I

    return-void
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public contain(Lcom/android/calendar/EditEvent$Attendee;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/calendar/EditEvent$Attendee;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/EditEvent$Attendee;->mName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/calendar/EditEvent$Attendee;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/calendar/EditEvent$Attendee;->mEmail:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/EditEvent$Attendee;->mEmail:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/calendar/EditEvent$Attendee;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/calendar/EditEvent$Attendee;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/EditEvent$Attendee;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/android/calendar/EditEvent$Attendee;->mName:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/calendar/EditEvent$Attendee;->mEmail:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EditEvent$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EditEvent$Attendee;->mEmail:Ljava/lang/String;

    goto :goto_0
.end method
