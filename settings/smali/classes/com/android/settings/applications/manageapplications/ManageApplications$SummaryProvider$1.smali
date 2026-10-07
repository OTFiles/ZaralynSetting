.class Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider$1;
.super Lcom/android/settings/applications/InstalledAppCounter;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;->setListening(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;Landroid/content/Context;ILcom/android/settingslib/wrapper/PackageManagerWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "installReason"    # I
    .param p4, "packageManager"    # Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 1427
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider$1;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/settings/applications/InstalledAppCounter;-><init>(Landroid/content/Context;ILcom/android/settingslib/wrapper/PackageManagerWrapper;)V

    return-void
.end method


# virtual methods
.method protected onCountComplete(I)V
    .locals 6
    .param p1, "num"    # I

    .line 1430
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider$1;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;->access$1700(Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;)Lcom/android/settings/dashboard/SummaryLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider$1;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider$1;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;

    .line 1431
    invoke-static {v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;->access$1600(Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f12015e

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1430
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 1432
    return-void
.end method
