.class Lcom/android/calendar/ConvNameEditText$3;
.super Ljava/lang/Object;
.source "ConvNameEditText.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ConvNameEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ConvNameEditText;


# direct methods
.method constructor <init>(Lcom/android/calendar/ConvNameEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ConvNameEditText$3;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
