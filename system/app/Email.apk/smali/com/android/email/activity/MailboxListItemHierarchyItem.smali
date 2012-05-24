.class Lcom/android/email/activity/MailboxListItemHierarchyItem;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"


# instance fields
.field public mAccountKey:J

.field public mDisplayName:Ljava/lang/String;

.field public mHasChild:I

.field public mHierarchyLevel:I

.field public mMailboxId:J

.field public mMailboxType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IJIIJ)V
    .locals 3

    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxType:I

    iput-wide v1, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxId:J

    iput v0, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mHasChild:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mHierarchyLevel:I

    iput-wide v1, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mAccountKey:J

    iput-object p1, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mDisplayName:Ljava/lang/String;

    iput p2, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxType:I

    iput-wide p3, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxId:J

    iput p5, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mHasChild:I

    iput p6, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mHierarchyLevel:I

    iput-wide p7, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mAccountKey:J

    return-void
.end method
