.class public final Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;
.super Ljava/lang/Object;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batterytip/AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAnomalyTypes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mScreenOnTimeMs:J

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->mAnomalyTypes:Landroid/util/ArraySet;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    .line 107
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    .line 107
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->mAnomalyTypes:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    .line 107
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->mScreenOnTimeMs:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    .line 107
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->mUid:I

    return v0
.end method


# virtual methods
.method public addAnomalyType(I)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;
    .locals 2
    .param p1, "type"    # I

    .line 114
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->mAnomalyTypes:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 115
    return-object p0
.end method

.method public build()Lcom/android/settings/fuelgauge/batterytip/AppInfo;
    .locals 2

    .line 134
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/batterytip/AppInfo;-><init>(Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;Lcom/android/settings/fuelgauge/batterytip/AppInfo$1;)V

    return-object v0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->mPackageName:Ljava/lang/String;

    .line 120
    return-object p0
.end method

.method public setScreenOnTimeMs(J)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;
    .locals 0
    .param p1, "screenOnTimeMs"    # J

    .line 124
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->mScreenOnTimeMs:J

    .line 125
    return-object p0
.end method

.method public setUid(I)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;
    .locals 0
    .param p1, "uid"    # I

    .line 129
    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->mUid:I

    .line 130
    return-object p0
.end method
