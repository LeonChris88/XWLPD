.class final Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayResolveInfo"
.end annotation


# instance fields
.field displayIcon:Landroid/graphics/drawable/Drawable;

.field displayLabel:Ljava/lang/CharSequence;

.field extendedInfo:Ljava/lang/CharSequence;

.field origIntent:Landroid/content/Intent;

.field ri:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/android/calendar/ChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/ChooserActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;->this$0:Lcom/android/calendar/ChooserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iput-object p3, p0, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    return-void
.end method
