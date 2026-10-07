.class public Lcom/android/settings/development/AppPicker;
.super Landroid/app/ListActivity;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/AppPicker$AppListAdapter;,
        Lcom/android/settings/development/AppPicker$MyApplicationInfo;
    }
.end annotation


# static fields
.field private static final sDisplayNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/development/AppPicker$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/settings/development/AppPicker$AppListAdapter;

.field private mDebuggableOnly:Z

.field private mPermissionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 183
    new-instance v0, Lcom/android/settings/development/AppPicker$1;

    invoke-direct {v0}, Lcom/android/settings/development/AppPicker$1;-><init>()V

    sput-object v0, Lcom/android/settings/development/AppPicker;->sDisplayNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/AppPicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/development/AppPicker;

    .line 42
    iget-boolean v0, p0, Lcom/android/settings/development/AppPicker;->mDebuggableOnly:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/development/AppPicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/development/AppPicker;

    .line 42
    iget-object v0, p0, Lcom/android/settings/development/AppPicker;->mPermissionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Comparator;
    .locals 1

    .line 42
    sget-object v0, Lcom/android/settings/development/AppPicker;->sDisplayNameComparator:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 54
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/development/AppPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.extra.REQUESTIING_PERMISSION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/AppPicker;->mPermissionName:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/development/AppPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.extra.DEBUGGABLE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/development/AppPicker;->mDebuggableOnly:Z

    .line 59
    new-instance v0, Lcom/android/settings/development/AppPicker$AppListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/development/AppPicker$AppListAdapter;-><init>(Lcom/android/settings/development/AppPicker;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/development/AppPicker;->mAdapter:Lcom/android/settings/development/AppPicker$AppListAdapter;

    .line 60
    iget-object v0, p0, Lcom/android/settings/development/AppPicker;->mAdapter:Lcom/android/settings/development/AppPicker$AppListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/development/AppPicker$AppListAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/development/AppPicker;->finish()V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/AppPicker;->mAdapter:Lcom/android/settings/development/AppPicker$AppListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/AppPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    :goto_0
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 79
    iget-object v0, p0, Lcom/android/settings/development/AppPicker;->mAdapter:Lcom/android/settings/development/AppPicker$AppListAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/development/AppPicker$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/AppPicker$MyApplicationInfo;

    .line 80
    .local v0, "app":Lcom/android/settings/development/AppPicker$MyApplicationInfo;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, v0, Lcom/android/settings/development/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings/development/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/development/AppPicker;->setResult(ILandroid/content/Intent;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/development/AppPicker;->finish()V

    .line 84
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 69
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 70
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 74
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 75
    return-void
.end method
