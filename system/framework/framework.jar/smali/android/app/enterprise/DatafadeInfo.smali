.class public Landroid/app/enterprise/DatafadeInfo;
.super Ljava/lang/Object;
.source "DatafadeInfo.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/DatafadeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURRENT_STATE_AUTH_DONE:I = 0x4

.field public static final CURRENT_STATE_AUTH_FAILED:I = 0x5

.field public static final CURRENT_STATE_COUNTING_TO_GET_AUTH:I = 0x3

.field public static final CURRENT_STATE_COUNTING_TO_PROMPT_AUTH:I = 0x2

.field public static final CURRENT_STATE_NEW:I = 0x1

.field public static final CURRENT_STATE_WIPING:I = 0x6

.field public static final CURRENT_STATE_WIPING_DONE:I = 0x7


# instance fields
.field public currentState:I

.field public db_id:I

.field public id:J

.field public timeDurationToPromptAuth:I

.field public timeDurationToWaitForAuthInput:I

.field public totalValidAuthAttempts:I

.field public validAuthAttemptsDone:I

.field public wipeTypeMetaData:Ljava/lang/String;

.field public wipeTypeWeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/enterprise/DatafadeInfo$1;

    invoke-direct {v0}, Landroid/app/enterprise/DatafadeInfo$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/DatafadeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/app/enterprise/DatafadeInfo;->wipeTypeWeight:I

    iput v1, p0, Landroid/app/enterprise/DatafadeInfo;->timeDurationToPromptAuth:I

    iput v1, p0, Landroid/app/enterprise/DatafadeInfo;->timeDurationToWaitForAuthInput:I

    iput v1, p0, Landroid/app/enterprise/DatafadeInfo;->totalValidAuthAttempts:I

    iput v1, p0, Landroid/app/enterprise/DatafadeInfo;->validAuthAttemptsDone:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/enterprise/DatafadeInfo;->wipeTypeMetaData:Ljava/lang/String;

    iput v1, p0, Landroid/app/enterprise/DatafadeInfo;->currentState:I

    iput-wide v3, p0, Landroid/app/enterprise/DatafadeInfo;->id:J

    iput v1, p0, Landroid/app/enterprise/DatafadeInfo;->db_id:I

    iput v2, p0, Landroid/app/enterprise/DatafadeInfo;->wipeTypeWeight:I

    iput v2, p0, Landroid/app/enterprise/DatafadeInfo;->timeDurationToPromptAuth:I

    iput v2, p0, Landroid/app/enterprise/DatafadeInfo;->timeDurationToWaitForAuthInput:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->totalValidAuthAttempts:I

    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/DatafadeInfo;->wipeTypeMetaData:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->currentState:I

    iput v2, p0, Landroid/app/enterprise/DatafadeInfo;->validAuthAttemptsDone:I

    iput-wide v3, p0, Landroid/app/enterprise/DatafadeInfo;->id:J

    iput v1, p0, Landroid/app/enterprise/DatafadeInfo;->db_id:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/app/enterprise/DatafadeInfo;->wipeTypeWeight:I

    iput v2, p0, Landroid/app/enterprise/DatafadeInfo;->timeDurationToPromptAuth:I

    iput v2, p0, Landroid/app/enterprise/DatafadeInfo;->timeDurationToWaitForAuthInput:I

    iput v2, p0, Landroid/app/enterprise/DatafadeInfo;->totalValidAuthAttempts:I

    iput v2, p0, Landroid/app/enterprise/DatafadeInfo;->validAuthAttemptsDone:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/enterprise/DatafadeInfo;->wipeTypeMetaData:Ljava/lang/String;

    iput v2, p0, Landroid/app/enterprise/DatafadeInfo;->currentState:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/enterprise/DatafadeInfo;->id:J

    iput v2, p0, Landroid/app/enterprise/DatafadeInfo;->db_id:I

    invoke-virtual {p0, p1}, Landroid/app/enterprise/DatafadeInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/DatafadeInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/enterprise/DatafadeInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    iget v0, p0, Landroid/app/enterprise/DatafadeInfo;->timeDurationToPromptAuth:I

    check-cast p1, Landroid/app/enterprise/DatafadeInfo;

    iget v1, p1, Landroid/app/enterprise/DatafadeInfo;->timeDurationToPromptAuth:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->wipeTypeWeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->timeDurationToPromptAuth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->timeDurationToWaitForAuthInput:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->totalValidAuthAttempts:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/DatafadeInfo;->validAuthAttemptsDone:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/DatafadeInfo;->wipeTypeMetaData:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WEIGHT_TYPE_ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/enterprise/DatafadeInfo;->wipeTypeWeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,TIME_DURATION_TO_PROMPT_AUTH: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/enterprise/DatafadeInfo;->timeDurationToPromptAuth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", TIME_DURATION_TO_WAIT_FOR_AUTH_INPUT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/enterprise/DatafadeInfo;->timeDurationToWaitForAuthInput:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", VALID_AUTH_ATTEMPTS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/enterprise/DatafadeInfo;->totalValidAuthAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", WIPE_TYPE_META_DATA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/enterprise/DatafadeInfo;->wipeTypeMetaData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/app/enterprise/DatafadeInfo;->wipeTypeWeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/enterprise/DatafadeInfo;->timeDurationToPromptAuth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/enterprise/DatafadeInfo;->timeDurationToWaitForAuthInput:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/enterprise/DatafadeInfo;->totalValidAuthAttempts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/enterprise/DatafadeInfo;->validAuthAttemptsDone:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/enterprise/DatafadeInfo;->wipeTypeMetaData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
