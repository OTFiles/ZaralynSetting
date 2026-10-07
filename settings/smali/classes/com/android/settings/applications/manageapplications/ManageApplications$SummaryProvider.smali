.class Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .line 1418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1419
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;->mContext:Landroid/content/Context;

    .line 1420
    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 1421
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settings/applications/manageapplications/ManageApplications$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/settings/dashboard/SummaryLoader;
    .param p3, "x2"    # Lcom/android/settings/applications/manageapplications/ManageApplications$1;

    .line 1413
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;

    .line 1413
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;)Lcom/android/settings/dashboard/SummaryLoader;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;

    .line 1413
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    return-object v0
.end method


# virtual methods
.method public setListening(Z)V
    .locals 5
    .param p1, "listening"    # Z

    .line 1425
    if-eqz p1, :cond_0

    .line 1426
    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider$1;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    new-instance v3, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;->mContext:Landroid/content/Context;

    .line 1427
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider$1;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;Landroid/content/Context;ILcom/android/settingslib/wrapper/PackageManagerWrapper;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 1433
    invoke-virtual {v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1435
    :cond_0
    return-void
.end method
