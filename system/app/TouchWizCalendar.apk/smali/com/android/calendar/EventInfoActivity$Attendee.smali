.class Lcom/android/calendar/EventInfoActivity$Attendee;
.super Ljava/lang/Object;
.source "EventInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Attendee"
.end annotation


# instance fields
.field mContactId:I

.field mEmail:Ljava/lang/String;

.field mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/EventInfoActivity$Attendee;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    iput p3, p0, Lcom/android/calendar/EventInfoActivity$Attendee;->mContactId:I

    return-void
.end method
