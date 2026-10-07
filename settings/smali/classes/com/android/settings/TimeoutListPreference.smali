.class public Lcom/android/settings/TimeoutListPreference;
.super Lcom/android/settings/RestrictedListPreference;
.source "TimeoutListPreference.java"


# instance fields
.field private mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private final mInitialEntries:[Ljava/lang/CharSequence;

.field private final mInitialValues:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RestrictedListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TimeoutListPreference;->mInitialEntries:[Ljava/lang/CharSequence;

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TimeoutListPreference;->mInitialValues:[Ljava/lang/CharSequence;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TimeoutListPreference;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TimeoutListPreference;

    .line 33
    iget-object v0, p0, Lcom/android/settings/TimeoutListPreference;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v0
.end method


# virtual methods
.method protected onDialogCreated(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedListPreference;->onDialogCreated(Landroid/app/Dialog;)V

    .line 58
    invoke-virtual {p1}, Landroid/app/Dialog;->create()V

    .line 59
    iget-object v0, p0, Lcom/android/settings/TimeoutListPreference;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_0

    .line 60
    const v0, 0x7f0a0038

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "footerView":Landroid/view/View;
    const v1, 0x7f0a003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/TimeoutListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/TimeoutListPreference$1;-><init>(Lcom/android/settings/TimeoutListPreference;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    .end local v0
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 47
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/android/settings/TimeoutListPreference;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_0

    .line 49
    const v0, 0x7f0d002e

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 51
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 53
    :goto_0
    return-void
.end method

.method public removeUnusableTimeouts(JLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 8
    .param p1, "maxTimeout"    # J
    .param p3, "admin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/TimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 75
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_0

    .line 76
    return-void

    .line 79
    :cond_0
    if-nez p3, :cond_1

    iget-object v1, p0, Lcom/android/settings/TimeoutListPreference;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/TimeoutListPreference;->isDisabledByAdmin()Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    return-void

    .line 82
    :cond_1
    if-nez p3, :cond_2

    .line 83
    const-wide p1, 0x7fffffffffffffffL

    .line 86
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v1, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v2, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/TimeoutListPreference;->mInitialValues:[Ljava/lang/CharSequence;

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 89
    iget-object v5, p0, Lcom/android/settings/TimeoutListPreference;->mInitialValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 90
    .local v5, "timeout":J
    cmp-long v7, v5, p1

    if-gtz v7, :cond_3

    .line 91
    iget-object v7, p0, Lcom/android/settings/TimeoutListPreference;->mInitialEntries:[Ljava/lang/CharSequence;

    aget-object v7, v7, v4

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v7, p0, Lcom/android/settings/TimeoutListPreference;->mInitialValues:[Ljava/lang/CharSequence;

    aget-object v7, v7, v4

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .end local v5
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 98
    .end local v4
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 99
    invoke-virtual {p0, p3}, Lcom/android/settings/TimeoutListPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 100
    return-void

    .line 102
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/settings/TimeoutListPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 105
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    array-length v5, v5

    if-eq v4, v5, :cond_7

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 107
    .local v4, "userPreference":I
    new-array v5, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/settings/TimeoutListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 108
    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/android/settings/TimeoutListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 109
    iput-object p3, p0, Lcom/android/settings/TimeoutListPreference;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 110
    int-to-long v5, v4

    cmp-long v3, v5, p1

    if-gtz v3, :cond_6

    .line 111
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 112
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 113
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v3, v5, p1

    if-nez v3, :cond_7

    .line 116
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 123
    .end local v4
    :cond_7
    :goto_1
    return-void
.end method
