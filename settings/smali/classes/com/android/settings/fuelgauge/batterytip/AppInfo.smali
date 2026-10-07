.class public Lcom/android/settings/fuelgauge/batterytip/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final anomalyTypes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final packageName:Ljava/lang/String;

.field public final screenOnTimeMs:J

.field public final uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/AppInfo$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->anomalyTypes:Landroid/util/ArraySet;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->screenOnTimeMs:J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    .line 55
    return-void
.end method

.method private constructor <init>(Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->access$000(Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->access$100(Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->anomalyTypes:Landroid/util/ArraySet;

    .line 45
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->access$200(Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->screenOnTimeMs:J

    .line 46
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->access$300(Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;Lcom/android/settings/fuelgauge/batterytip/AppInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;
    .param p2, "x1"    # Lcom/android/settings/fuelgauge/batterytip/AppInfo$1;

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/AppInfo;-><init>(Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/fuelgauge/batterytip/AppInfo;)I
    .locals 4
    .param p1, "o"    # Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    .line 59
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->screenOnTimeMs:J

    iget-wide v2, p1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->screenOnTimeMs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->compareTo(Lcom/android/settings/fuelgauge/batterytip/AppInfo;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 83
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 84
    return v0

    .line 86
    :cond_0
    instance-of v1, p1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 87
    return v2

    .line 90
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    .line 91
    .local v1, "other":Lcom/android/settings/fuelgauge/batterytip/AppInfo;
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->anomalyTypes:Landroid/util/ArraySet;

    iget-object v4, v1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->anomalyTypes:Landroid/util/ArraySet;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    iget v4, v1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->screenOnTimeMs:J

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->screenOnTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    .line 94
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 91
    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",anomalyTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->anomalyTypes:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",screenTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->screenOnTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 69
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->anomalyTypes:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 71
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->screenOnTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    return-void
.end method
