.class public Lcom/android/settings/ActivityPicker;
.super Lcom/android/internal/app/AlertActivity;
.source "ActivityPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ActivityPicker$EmptyDrawable;,
        Lcom/android/settings/ActivityPicker$IconResizer;,
        Lcom/android/settings/ActivityPicker$PickAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/ActivityPicker$PickAdapter;

.field private mBaseIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getIntentForPosition(I)Landroid/content/Intent;
    .locals 2
    .param p1, "position"    # I

    .line 133
    iget-object v0, p0, Lcom/android/settings/ActivityPicker;->mAdapter:Lcom/android/settings/ActivityPicker$PickAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/ActivityPicker$PickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    .line 134
    .local v0, "item":Lcom/android/settings/ActivityPicker$PickAdapter$Item;
    iget-object v1, p0, Lcom/android/settings/ActivityPicker;->mBaseIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->getIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method protected getItems()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
            ">;"
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/ActivityPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 146
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/ActivityPicker$PickAdapter$Item;>;"
    invoke-virtual {p0}, Lcom/android/settings/ActivityPicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 150
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.NAME"

    .line 151
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 152
    .local v3, "labels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 153
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 155
    .local v4, "icons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 156
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 157
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 158
    .local v6, "label":Ljava/lang/String;
    const/4 v7, 0x0

    move-object v8, v7

    .line 162
    .local v8, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent$ShortcutIconResource;

    .line 163
    .local v9, "iconResource":Landroid/content/Intent$ShortcutIconResource;
    iget-object v10, v9, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v10

    .line 165
    .local v10, "res":Landroid/content/res/Resources;
    iget-object v11, v9, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v10, v11, v7, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v7

    .line 169
    .end local v9
    .end local v10
    goto :goto_1

    .line 167
    :catch_0
    move-exception v7

    .line 171
    :goto_1
    new-instance v7, Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    invoke-direct {v7, p0, v6, v8}, Lcom/android/settings/ActivityPicker$PickAdapter$Item;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v6
    .end local v8
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 176
    .end local v5
    :cond_0
    iget-object v5, p0, Lcom/android/settings/ActivityPicker;->mBaseIntent:Landroid/content/Intent;

    if-eqz v5, :cond_1

    .line 177
    iget-object v5, p0, Lcom/android/settings/ActivityPicker;->mBaseIntent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v1}, Lcom/android/settings/ActivityPicker;->putIntentItems(Landroid/content/Intent;Ljava/util/List;)V

    .line 180
    :cond_1
    return-object v1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/ActivityPicker;->setResult(I)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/ActivityPicker;->finish()V

    .line 126
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 115
    invoke-virtual {p0, p2}, Lcom/android/settings/ActivityPicker;->getIntentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/ActivityPicker;->setResult(ILandroid/content/Intent;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/ActivityPicker;->finish()V

    .line 118
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 73
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/ActivityPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 79
    .local v1, "parcel":Landroid/os/Parcelable;
    instance-of v2, v1, Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 80
    move-object v2, v1

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/settings/ActivityPicker;->mBaseIntent:Landroid/content/Intent;

    .line 81
    iget-object v2, p0, Lcom/android/settings/ActivityPicker;->mBaseIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/ActivityPicker;->mBaseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, -0xc4

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 86
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/android/settings/ActivityPicker;->mBaseIntent:Landroid/content/Intent;

    .line 87
    iget-object v2, p0, Lcom/android/settings/ActivityPicker;->mBaseIntent:Landroid/content/Intent;

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    :goto_0
    iget-object v2, p0, Lcom/android/settings/ActivityPicker;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 92
    .local v2, "params":Lcom/android/internal/app/AlertController$AlertParams;
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 93
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 96
    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ActivityPicker;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 103
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/ActivityPicker;->getItems()Ljava/util/List;

    move-result-object v3

    .line 104
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/ActivityPicker$PickAdapter$Item;>;"
    new-instance v4, Lcom/android/settings/ActivityPicker$PickAdapter;

    invoke-direct {v4, p0, v3}, Lcom/android/settings/ActivityPicker$PickAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/android/settings/ActivityPicker;->mAdapter:Lcom/android/settings/ActivityPicker$PickAdapter;

    .line 105
    iget-object v4, p0, Lcom/android/settings/ActivityPicker;->mAdapter:Lcom/android/settings/ActivityPicker$PickAdapter;

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/ActivityPicker;->setupAlert()V

    .line 108
    return-void
.end method

.method protected putIntentItems(Landroid/content/Intent;Ljava/util/List;)V
    .locals 6
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
            ">;)V"
        }
    .end annotation

    .line 187
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/ActivityPicker$PickAdapter$Item;>;"
    invoke-virtual {p0}, Lcom/android/settings/ActivityPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 188
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 190
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v3, v0}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 192
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 193
    .local v3, "listSize":I
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 194
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 195
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v5, Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    invoke-direct {v5, p0, v0, v4}, Lcom/android/settings/ActivityPicker$PickAdapter$Item;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    .end local v4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v1
    :cond_0
    return-void
.end method
