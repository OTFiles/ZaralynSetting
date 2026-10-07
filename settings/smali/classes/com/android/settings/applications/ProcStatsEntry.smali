.class public final Lcom/android/settings/applications/ProcStatsEntry;
.super Ljava/lang/Object;
.source "ProcStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ProcStatsEntry$Service;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static DEBUG:Z


# instance fields
.field final mAvgBgMem:J

.field final mAvgRunMem:J

.field mBestTargetPackage:Ljava/lang/String;

.field final mBgDuration:J

.field final mBgWeight:D

.field public mLabel:Ljava/lang/CharSequence;

.field final mMaxBgMem:J

.field final mMaxRunMem:J

.field final mName:Ljava/lang/String;

.field final mPackage:Ljava/lang/String;

.field final mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mRunDuration:J

.field final mRunWeight:D

.field mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/ProcStatsEntry$Service;",
            ">;>;"
        }
    .end annotation
.end field

.field final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    .line 304
    new-instance v0, Lcom/android/settings/applications/ProcStatsEntry$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcStatsEntry$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcStatsEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxBgMem:J

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgRunMem:J

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxRunMem:J

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    .local v0, "N":I
    if-lez v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 109
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "key":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v3, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    sget-object v4, Lcom/android/settings/applications/ProcStatsEntry$Service;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 113
    iget-object v4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    .end local v2
    .end local v3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v1
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Z)V
    .locals 4
    .param p1, "proc"    # Lcom/android/internal/app/procstats/ProcessState;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tmpBgTotals"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    .param p4, "tmpRunTotals"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    .param p5, "useUss"    # Z

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    .line 62
    const-wide/16 v0, 0x0

    invoke-virtual {p1, p3, v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V

    .line 63
    invoke-virtual {p1, p4, v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V

    .line 64
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    .line 66
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-wide v0, p3, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    .line 69
    if-eqz p5, :cond_0

    iget-wide v0, p3, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    goto :goto_0

    :cond_0
    iget-wide v0, p3, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    :goto_0
    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    .line 70
    if-eqz p5, :cond_1

    iget-wide v0, p3, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    goto :goto_1

    :cond_1
    iget-wide v0, p3, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    :goto_1
    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxBgMem:J

    .line 71
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    .line 72
    iget-wide v0, p4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    .line 73
    if-eqz p5, :cond_2

    iget-wide v0, p4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    goto :goto_2

    :cond_2
    iget-wide v0, p4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    :goto_2
    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgRunMem:J

    .line 74
    if-eqz p5, :cond_3

    iget-wide v0, p4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    goto :goto_3

    :cond_3
    iget-wide v0, p4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    :goto_3
    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxRunMem:J

    .line 75
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgRunMem:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    .line 76
    sget-boolean v0, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "ProcStatsEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New proc entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": dur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " avgpss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " weight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;JJJ)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "procName"    # Ljava/lang/String;
    .param p4, "duration"    # J
    .param p6, "mem"    # J
    .param p8, "memDuration"    # J

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    .line 82
    iput-object p1, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    .line 83
    iput p2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    .line 84
    iput-object p3, p0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    .line 85
    iput-wide p4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    iput-wide p4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    .line 86
    iput-wide p6, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxRunMem:J

    iput-wide p6, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgRunMem:J

    iput-wide p6, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxBgMem:J

    iput-wide p6, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    .line 87
    long-to-double v0, p8

    long-to-double v2, p6

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    .line 88
    sget-boolean v0, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ProcStatsEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New proc entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": dur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " avgpss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " weight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public addService(Lcom/android/internal/app/procstats/ServiceState;)V
    .locals 3
    .param p1, "svc"    # Lcom/android/internal/app/procstats/ServiceState;

    .line 264
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ServiceState;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 265
    .local v0, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    if-nez v0, :cond_0

    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 267
    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ServiceState;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_0
    new-instance v1, Lcom/android/settings/applications/ProcStatsEntry$Service;

    invoke-direct {v1, p1}, Lcom/android/settings/applications/ProcStatsEntry$Service;-><init>(Lcom/android/internal/app/procstats/ServiceState;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V
    .locals 23
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "stats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p3, "bgTotals"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    .param p4, "runTotals"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    .param p6, "useUss"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/internal/app/procstats/ProcessStats;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;",
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/ProcStatsEntry;",
            ">;Z)V"
        }
    .end annotation

    .local p5, "compare":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings/applications/ProcStatsEntry;>;"
    move-object/from16 v1, p0

    .line 126
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    .line 127
    iget-object v0, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 128
    sget-boolean v0, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ProcStatsEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Eval pkg of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": single pkg "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    iget-object v0, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    .line 130
    return-void

    .line 135
    :cond_1
    move v0, v3

    .local v0, "ipkg":I
    :goto_0
    iget-object v4, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 136
    const-string v4, "android"

    iget-object v5, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    iget-object v2, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    .line 138
    return-void

    .line 135
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v0
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 144
    .local v4, "subProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry;>;"
    move v0, v3

    .restart local v0
    :goto_1
    iget-object v5, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_8

    .line 145
    move-object/from16 v5, p2

    iget-object v6, v5, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    iget-object v7, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget v8, v1, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/LongSparseArray;

    .line 147
    .local v6, "vpkgs":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    move v7, v3

    .local v7, "ivers":I
    :goto_2
    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 148
    invoke-virtual {v6, v7}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 149
    .local v8, "pkgState":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    sget-boolean v9, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v9, :cond_4

    const-string v9, "ProcStatsEntry"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Eval pkg of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", pkg "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_4
    if-nez v8, :cond_5

    .line 152
    const-string v9, "ProcStatsEntry"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No package state found for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " in process "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    goto :goto_3

    .line 156
    :cond_5
    iget-object v9, v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v10, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/procstats/ProcessState;

    .line 157
    .local v9, "pkgProc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v9, :cond_6

    .line 158
    const-string v10, "ProcStatsEntry"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " found in package state "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    .line 159
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 158
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    goto :goto_3

    .line 162
    :cond_6
    new-instance v15, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v12, v8, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    move-object v10, v15

    move-object v11, v9

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object v3, v15

    move/from16 v15, p6

    invoke-direct/range {v10 .. v15}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Z)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v8
    .end local v9
    :goto_3
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    goto/16 :goto_2

    .line 144
    .end local v6
    .end local v7
    :cond_7
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 167
    .end local v0
    :cond_8
    move-object/from16 v5, p2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_21

    .line 168
    move-object/from16 v3, p5

    invoke-static {v4, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 169
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v6, v0, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v8, v0, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double/2addr v8, v10

    cmpl-double v0, v6, v8

    if-lez v0, :cond_a

    .line 170
    sget-boolean v0, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "ProcStatsEntry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Eval pkg of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": best pkg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v8, v8, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " weight "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v7, v8, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " better than "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v7, v7, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " weight "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v7, v2, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_9
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    .line 175
    return-void

    .line 180
    :cond_a
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v6, v0, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    .line 181
    .local v6, "maxWeight":D
    const-wide/16 v8, -0x1

    .line 182
    .local v8, "bestRunTime":J
    const/4 v0, 0x0

    .line 183
    .local v0, "bestPersistent":Z
    move v2, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v2, "bestPersistent":Z
    :goto_4
    move v10, v0

    .end local v0
    .local v10, "i":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_1f

    .line 184
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/settings/applications/ProcStatsEntry;

    .line 185
    .local v11, "subProc":Lcom/android/settings/applications/ProcStatsEntry;
    iget-wide v12, v11, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v14, v6, v14

    cmpg-double v0, v12, v14

    if-gez v0, :cond_b

    .line 186
    sget-boolean v0, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v0, :cond_12

    const-string v0, "ProcStatsEntry"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Eval pkg of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": pkg "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v11, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " weight "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v11, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v13, " too small"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 192
    :cond_b
    :try_start_0
    iget-object v0, v11, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    move-object/from16 v12, p1

    const/4 v13, 0x0

    invoke-virtual {v12, v0, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 193
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v13, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v13, :cond_d

    .line 194
    :try_start_1
    sget-boolean v13, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v13, :cond_c

    const-string v13, "ProcStatsEntry"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Eval pkg of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ": pkg "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v11, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " has no icon"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_c
    goto/16 :goto_7

    .line 217
    .end local v0
    :catch_0
    move-exception v0

    move-wide/from16 v19, v6

    goto/16 :goto_d

    .line 198
    .restart local v0
    :cond_d
    :try_start_2
    iget v13, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    and-int/lit8 v13, v13, 0x8

    if-eqz v13, :cond_13

    .line 199
    :try_start_3
    iget-wide v13, v11, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    .line 200
    .local v13, "thisRunTime":J
    if-eqz v2, :cond_10

    cmp-long v15, v13, v8

    if-lez v15, :cond_e

    .line 201
    move-object/from16 v16, v0

    goto :goto_5

    .line 207
    :cond_e
    sget-boolean v15, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v15, :cond_f

    const-string v15, "ProcStatsEntry"

    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0
    .local v16, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Eval pkg of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": pkg "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pers run time "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " not as good as last "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 211
    .end local v16
    .restart local v0
    :cond_f
    move-object/from16 v16, v0

    .end local v0
    .restart local v16
    goto :goto_6

    .line 201
    .end local v16
    .restart local v0
    :cond_10
    move-object/from16 v16, v0

    .end local v0
    .restart local v16
    :goto_5
    sget-boolean v0, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v0, :cond_11

    const-string v0, "ProcStatsEntry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Eval pkg of "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ": pkg "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v11, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " new best pers run time "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_11
    move-wide v8, v13

    .line 205
    const/4 v2, 0x1

    .line 211
    :goto_6
    nop

    .line 183
    .end local v6
    .end local v11
    .end local v13
    .end local v16
    .local v19, "maxWeight":D
    :cond_12
    :goto_7
    move-wide/from16 v19, v6

    goto/16 :goto_e

    .line 212
    .end local v19
    .restart local v0
    .restart local v6
    .restart local v11
    :cond_13
    move-object/from16 v16, v0

    .end local v0
    .restart local v16
    if-eqz v2, :cond_15

    .line 213
    sget-boolean v0, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v0, :cond_14

    const-string v0, "ProcStatsEntry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Eval pkg of "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": pkg "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v11, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " is not persistent"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_14
    goto :goto_7

    .line 221
    .end local v16
    :cond_15
    nop

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "subProcServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    const/4 v3, 0x0

    .local v3, "isp":I
    iget-object v13, v1, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .local v13, "NSP":I
    :goto_8
    if-ge v3, v13, :cond_17

    .line 224
    iget-object v14, v1, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v14, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 225
    .local v14, "subServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Lcom/android/settings/applications/ProcStatsEntry$Service;

    iget-object v15, v15, Lcom/android/settings/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v11, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    .end local v0
    .local v17, "subProcServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 226
    move-object v0, v14

    .line 227
    .end local v17
    .restart local v0
    goto :goto_9

    .line 223
    .end local v0
    .end local v14
    .restart local v17
    :cond_16
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v17

    goto :goto_8

    .line 230
    .end local v3
    .end local v13
    .end local v17
    .restart local v0
    :cond_17
    move-object/from16 v17, v0

    :goto_9
    const-wide/16 v13, 0x0

    .line 231
    .local v13, "thisRunTime":J
    if-eqz v0, :cond_1a

    .line 232
    const/4 v3, 0x0

    .local v3, "iss":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, "NSS":I
    :goto_a
    if-ge v3, v15, :cond_1a

    .line 233
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    check-cast v0, Lcom/android/settings/applications/ProcStatsEntry$Service;

    .line 234
    .local v0, "service":Lcom/android/settings/applications/ProcStatsEntry$Service;
    .local v18, "subProcServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    move-wide/from16 v19, v6

    iget-wide v5, v0, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    .end local v6
    .restart local v19
    cmp-long v5, v5, v13

    if-lez v5, :cond_19

    .line 235
    sget-boolean v5, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v5, :cond_18

    const-string v5, "ProcStatsEntry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Eval pkg of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": pkg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v11, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/settings/applications/ProcStatsEntry$Service;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " run time is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v21, v13

    iget-wide v12, v0, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    .end local v13
    .local v21, "thisRunTime":J
    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 238
    .end local v21
    .restart local v13
    :cond_18
    move-wide/from16 v21, v13

    .end local v13
    .restart local v21
    :goto_b
    iget-wide v13, v0, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    .line 239
    .end local v21
    .restart local v13
    goto :goto_c

    .line 232
    .end local v0
    :cond_19
    move-wide/from16 v21, v13

    .end local v13
    .restart local v21
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v18

    move-wide/from16 v6, v19

    move-object/from16 v5, p2

    move-object/from16 v12, p1

    goto :goto_a

    .line 243
    .end local v3
    .end local v15
    .end local v18
    .end local v19
    .end local v21
    .local v0, "subProcServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    .restart local v6
    .restart local v13
    :cond_1a
    move-object/from16 v18, v0

    move-wide/from16 v19, v6

    move-wide/from16 v21, v13

    .end local v0
    .end local v6
    .end local v13
    .restart local v18
    .restart local v19
    .restart local v21
    move-wide/from16 v13, v21

    .end local v21
    .restart local v13
    :goto_c
    cmp-long v0, v13, v8

    if-lez v0, :cond_1c

    .line 244
    sget-boolean v0, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "ProcStatsEntry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Eval pkg of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": pkg "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " new best run time "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_1b
    iget-object v0, v11, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    .line 247
    move-wide v5, v13

    .line 183
    .end local v8
    .local v5, "bestRunTime":J
    move-wide v8, v5

    goto :goto_e

    .line 249
    .end local v5
    .restart local v8
    :cond_1c
    sget-boolean v0, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string v0, "ProcStatsEntry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Eval pkg of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": pkg "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " run time "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " not as good as last "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v11
    .end local v13
    .end local v18
    goto :goto_e

    .line 217
    .end local v19
    .restart local v6
    .restart local v11
    :catch_1
    move-exception v0

    move-wide/from16 v19, v6

    .line 218
    .end local v6
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v19
    :goto_d
    sget-boolean v3, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v3, :cond_1d

    const-string v3, "ProcStatsEntry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Eval pkg of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v11, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " failed finding app info"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1d
    nop

    .line 183
    .end local v0
    .end local v11
    :cond_1e
    :goto_e
    add-int/lit8 v0, v10, 0x1

    .end local v10
    .local v0, "i":I
    move-wide/from16 v6, v19

    move-object/from16 v3, p5

    move-object/from16 v5, p2

    goto/16 :goto_4

    .line 255
    .end local v0
    .end local v19
    .restart local v6
    :cond_1f
    move-wide/from16 v19, v6

    .end local v6
    .restart local v19
    iget-object v0, v1, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 256
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    .line 258
    .end local v2
    .end local v8
    .end local v19
    :cond_20
    goto :goto_f

    :cond_21
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_22

    .line 259
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    .line 261
    :cond_22
    :goto_f
    return-void
.end method

.method public getUid()I
    .locals 1

    .line 301
    iget v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 279
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 283
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 284
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 285
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxBgMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 286
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 287
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 288
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgRunMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 289
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxRunMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 290
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 291
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 293
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 295
    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    .end local v1
    :cond_0
    return-void
.end method
