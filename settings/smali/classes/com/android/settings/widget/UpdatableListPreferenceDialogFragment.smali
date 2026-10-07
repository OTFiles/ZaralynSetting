.class public Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;
.super Landroid/support/v14/preference/PreferenceDialogFragment;
.source "UpdatableListPreferenceDialogFragment.java"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/Instrumentable;


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;

.field private mClickedDialogEntryIndex:I

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mMetricsCategory:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mMetricsCategory:I

    return-void
.end method

.method private getListPreference()Landroid/support/v7/preference/ListPreference;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    return-object v0
.end method

.method public static synthetic lambda$onPrepareDialogBuilder$0(Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 132
    iput p2, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    .line 133
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 134
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 135
    return-void
.end method

.method public static newInstance(Ljava/lang/String;I)Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "metricsCategory"    # I

    .line 50
    new-instance v0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;-><init>()V

    .line 52
    .local v0, "fragment":Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 53
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v2, "metrics_category_key"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    return-object v0
.end method

.method private setPreferenceData(Landroid/support/v7/preference/ListPreference;)V
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/ListPreference;

    .line 150
    iget-object v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 151
    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    .line 152
    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 153
    .local v3, "entry":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    .line 156
    return-void
.end method


# virtual methods
.method getAdapter()Landroid/widget/ArrayAdapter;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mMetricsCategory:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 60
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 62
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "metrics_category_key"

    .line 63
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mMetricsCategory:I

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mEntries:Ljava/util/ArrayList;

    .line 66
    invoke-direct {p0}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->getListPreference()Landroid/support/v7/preference/ListPreference;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->setPreferenceData(Landroid/support/v7/preference/ListPreference;)V

    goto :goto_0

    .line 68
    :cond_0
    const-string v1, "UpdatableListPreferenceDialogFragment.index"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    .line 69
    const-string v1, "UpdatableListPreferenceDialogFragment.entries"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mEntries:Ljava/util/ArrayList;

    .line 70
    const-string v1, "UpdatableListPreferenceDialogFragment.entryValues"

    .line 71
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    .line 73
    :goto_0
    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .line 85
    invoke-direct {p0}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->getListPreference()Landroid/support/v7/preference/ListPreference;

    move-result-object v0

    .line 86
    .local v0, "preference":Landroid/support/v7/preference/ListPreference;
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 92
    .end local v1
    :cond_0
    return-void
.end method

.method public onListPreferenceUpdated(Landroid/support/v7/preference/ListPreference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/ListPreference;

    .line 159
    iget-object v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0, p1}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->setPreferenceData(Landroid/support/v7/preference/ListPreference;)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 163
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 6
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .line 117
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const/4 v2, 0x0

    const v3, 0x101005d

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 123
    .local v0, "a":Landroid/content/res/TypedArray;
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 125
    const/16 v4, 0x15

    const v5, 0x1090012

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mEntries:Ljava/util/ArrayList;

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 130
    iget-object v1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    iget v3, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    new-instance v4, Lcom/android/settings/widget/-$$Lambda$UpdatableListPreferenceDialogFragment$yZRmvmWflT3ytJ4m-nzXQtpejcQ;

    invoke-direct {v4, p0}, Lcom/android/settings/widget/-$$Lambda$UpdatableListPreferenceDialogFragment$yZRmvmWflT3ytJ4m-nzXQtpejcQ;-><init>(Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;)V

    invoke-virtual {p1, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 136
    invoke-virtual {p1, v2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 137
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 77
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 78
    const-string v0, "UpdatableListPreferenceDialogFragment.index"

    iget v1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    const-string v0, "UpdatableListPreferenceDialogFragment.entries"

    iget-object v1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 80
    const-string v0, "UpdatableListPreferenceDialogFragment.entryValues"

    iget-object v1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method setAdapter(Landroid/widget/ArrayAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ArrayAdapter;

    .line 96
    iput-object p1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 97
    return-void
.end method

.method setEntries(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iput-object p1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mEntries:Ljava/util/ArrayList;

    .line 102
    return-void
.end method

.method setMetricsCategory(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 111
    const-string v0, "metrics_category_key"

    .line 112
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mMetricsCategory:I

    .line 113
    return-void
.end method
