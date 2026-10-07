.class public Lcom/android/settings/applications/ProcStatsPackageEntry;
.super Ljava/lang/Object;
.source "ProcStatsPackageEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/applications/ProcStatsPackageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static DEBUG:Z


# instance fields
.field mAvgBgMem:J

.field mAvgRunMem:J

.field mBgDuration:J

.field mBgWeight:D

.field final mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field mMaxBgMem:J

.field mMaxRunMem:J

.field final mPackage:Ljava/lang/String;

.field mRunDuration:J

.field mRunWeight:D

.field public mUiLabel:Ljava/lang/String;

.field public mUiTargetApp:Landroid/content/pm/ApplicationInfo;

.field private mWindowLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->DEBUG:Z

    .line 154
    new-instance v0, Lcom/android/settings/applications/ProcStatsPackageEntry$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcStatsPackageEntry$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/settings/applications/ProcStatsEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgDuration:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunDuration:J

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "windowLength"    # J

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    .line 55
    iput-object p1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    .line 56
    iput-wide p2, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mWindowLength:J

    .line 57
    return-void
.end method

.method public static getFrequency(FLandroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "amount"    # F
    .param p1, "context"    # Landroid/content/Context;

    .line 167
    const v0, 0x3f733333    # 0.95f

    cmpl-float v0, p0, v0

    const/high16 v1, 0x42c80000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_0

    .line 168
    const v0, 0x7f1200e5

    new-array v3, v3, [Ljava/lang/Object;

    mul-float/2addr v1, p0

    float-to-int v1, v1

    .line 169
    invoke-static {v1}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 168
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 170
    :cond_0
    const/high16 v0, 0x3e800000    # 0.25f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    .line 171
    const v0, 0x7f120d52

    new-array v3, v3, [Ljava/lang/Object;

    mul-float/2addr v1, p0

    float-to-int v1, v1

    .line 172
    invoke-static {v1}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 171
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 174
    :cond_1
    const v0, 0x7f120ad9

    new-array v3, v3, [Ljava/lang/Object;

    mul-float/2addr v1, p0

    float-to-int v1, v1

    .line 175
    invoke-static {v1}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 174
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addEntry(Lcom/android/settings/applications/ProcStatsEntry;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/settings/applications/ProcStatsEntry;

    .line 83
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getBgWeight()D
    .locals 2

    .line 184
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    return-wide v0
.end method

.method public getEntries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRunWeight()D
    .locals 2

    .line 180
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    return-wide v0
.end method

.method public retrieveUiData(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 114
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    .line 117
    :try_start_0
    const-string v0, "os"

    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x408200

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "android"

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 122
    const v0, 0x7f120a68

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 128
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    .line 132
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "ProcStatsEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not find package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .end local v0
    :goto_1
    return-void
.end method

.method public updateMetrics()V
    .locals 7

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgDuration:J

    .line 88
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    .line 89
    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunDuration:J

    .line 90
    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    .line 91
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 92
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 93
    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ProcStatsEntry;

    .line 94
    .local v2, "entry":Lcom/android/settings/applications/ProcStatsEntry;
    iget-wide v3, v2, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    iget-wide v5, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgDuration:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgDuration:J

    .line 95
    iget-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    iget-wide v5, v2, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    .line 96
    iget-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    iget-wide v5, v2, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    .line 97
    iget-wide v3, v2, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    iget-wide v5, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunDuration:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunDuration:J

    .line 98
    iget-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    iget-wide v5, v2, Lcom/android/settings/applications/ProcStatsEntry;->mAvgRunMem:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    .line 99
    iget-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-wide v5, v2, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    .line 105
    iget-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    iget-wide v5, v2, Lcom/android/settings/applications/ProcStatsEntry;->mMaxBgMem:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    .line 106
    iget-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    iget-wide v5, v2, Lcom/android/settings/applications/ProcStatsEntry;->mMaxRunMem:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    .line 92
    .end local v2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v1
    :cond_0
    iget-wide v1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    int-to-long v3, v0

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    .line 109
    iget-wide v1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    int-to-long v3, v0

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    .line 110
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 142
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 144
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 145
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 147
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 148
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 149
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 150
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 151
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 152
    return-void
.end method
