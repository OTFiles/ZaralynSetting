.class public Lcom/android/settingslib/core/lifecycle/Lifecycle;
.super Landroid/arch/lifecycle/LifecycleRegistry;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;
    }
.end annotation


# instance fields
.field private final mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/lifecycle/LifecycleObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mProxy:Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 2
    .param p1, "provider"    # Landroid/arch/lifecycle/LifecycleOwner;

    .line 69
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LifecycleRegistry;-><init>(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    .line 58
    new-instance v0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;-><init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/lifecycle/Lifecycle$1;)V

    iput-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mProxy:Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;

    .line 70
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mProxy:Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 71
    return-void
.end method

.method static synthetic access$100(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 54
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onStart()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 54
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onResume()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 54
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onPause()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 54
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onStop()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 54
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onDestroy()V

    return-void
.end method

.method private onDestroy()V
    .locals 4

    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 202
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 204
    .local v2, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    :try_start_0
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnDestroy;

    if-eqz v3, :cond_0

    .line 205
    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/core/lifecycle/events/OnDestroy;

    invoke-interface {v3}, Lcom/android/settingslib/core/lifecycle/events/OnDestroy;->onDestroy()V

    .line 208
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_1

    .line 207
    :catch_0
    move-exception v3

    .line 201
    .end local v2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    .end local v0
    .end local v1
    :cond_1
    return-void
.end method

.method private onPause()V
    .locals 4

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 166
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 168
    .local v2, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    :try_start_0
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnPause;

    if-eqz v3, :cond_0

    .line 169
    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/core/lifecycle/events/OnPause;

    invoke-interface {v3}, Lcom/android/settingslib/core/lifecycle/events/OnPause;->onPause()V

    .line 172
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_1

    .line 171
    :catch_0
    move-exception v3

    .line 165
    .end local v2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    .end local v0
    .end local v1
    :cond_1
    return-void
.end method

.method private onResume()V
    .locals 4

    .line 153
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 154
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 156
    .local v2, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    :try_start_0
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnResume;

    if-eqz v3, :cond_0

    .line 157
    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/core/lifecycle/events/OnResume;

    invoke-interface {v3}, Lcom/android/settingslib/core/lifecycle/events/OnResume;->onResume()V

    .line 160
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_1

    .line 159
    :catch_0
    move-exception v3

    .line 153
    .end local v2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v0
    .end local v1
    :cond_1
    return-void
.end method

.method private onStart()V
    .locals 4

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 130
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 132
    .local v2, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    :try_start_0
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnStart;

    if-eqz v3, :cond_0

    .line 133
    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/core/lifecycle/events/OnStart;

    invoke-interface {v3}, Lcom/android/settingslib/core/lifecycle/events/OnStart;->onStart()V

    .line 136
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_1

    .line 135
    :catch_0
    move-exception v3

    .line 129
    .end local v2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v0
    .end local v1
    :cond_1
    return-void
.end method

.method private onStop()V
    .locals 4

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 190
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 192
    .local v2, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    :try_start_0
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnStop;

    if-eqz v3, :cond_0

    .line 193
    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/core/lifecycle/events/OnStop;

    invoke-interface {v3}, Lcom/android/settingslib/core/lifecycle/events/OnStop;->onStop()V

    .line 196
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_1

    .line 195
    :catch_0
    move-exception v3

    .line 189
    .end local v2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    .end local v0
    .end local v1
    :cond_1
    return-void
.end method


# virtual methods
.method public addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/arch/lifecycle/LifecycleObserver;

    .line 79
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->ensureMainThread()V

    .line 80
    invoke-super {p0, p1}, Landroid/arch/lifecycle/LifecycleRegistry;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 81
    instance-of v0, p1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 87
    :cond_0
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 104
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 106
    .local v2, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    :try_start_0
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnAttach;

    if-eqz v3, :cond_0

    .line 107
    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/core/lifecycle/events/OnAttach;

    invoke-interface {v3, p1}, Lcom/android/settingslib/core/lifecycle/events/OnAttach;->onAttach(Landroid/content/Context;)V

    .line 110
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_1

    .line 109
    :catch_0
    move-exception v3

    .line 103
    .end local v2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .end local v0
    .end local v1
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 118
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 120
    .local v2, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    :try_start_0
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnCreate;

    if-eqz v3, :cond_0

    .line 121
    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/core/lifecycle/events/OnCreate;

    invoke-interface {v3, p1}, Lcom/android/settingslib/core/lifecycle/events/OnCreate;->onCreate(Landroid/os/Bundle;)V

    .line 124
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_1

    .line 123
    :catch_0
    move-exception v3

    .line 117
    .end local v2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .end local v0
    .end local v1
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 214
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 216
    .local v2, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    :try_start_0
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;

    if-eqz v3, :cond_0

    .line 217
    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;

    invoke-interface {v3, p1, p2}, Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 220
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_1

    .line 219
    :catch_0
    move-exception v3

    .line 213
    .end local v2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    .end local v0
    .end local v1
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 237
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 238
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 240
    .local v2, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    :try_start_0
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnOptionsItemSelected;

    if-eqz v3, :cond_0

    .line 241
    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/core/lifecycle/events/OnOptionsItemSelected;

    invoke-interface {v3, p1}, Lcom/android/settingslib/core/lifecycle/events/OnOptionsItemSelected;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 242
    const/4 v3, 0x1

    return v3

    .line 246
    :cond_0
    goto :goto_1

    .line 245
    :catch_0
    move-exception v3

    .line 237
    .end local v2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    .end local v0
    .end local v1
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 225
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 226
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 228
    .local v2, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    :try_start_0
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnPrepareOptionsMenu;

    if-eqz v3, :cond_0

    .line 229
    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/core/lifecycle/events/OnPrepareOptionsMenu;

    invoke-interface {v3, p1}, Lcom/android/settingslib/core/lifecycle/events/OnPrepareOptionsMenu;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 232
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_1

    .line 231
    :catch_0
    move-exception v3

    .line 225
    .end local v2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    .end local v0
    .end local v1
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 178
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 180
    .local v2, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    :try_start_0
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;

    if-eqz v3, :cond_0

    .line 181
    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;

    invoke-interface {v3, p1}, Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 184
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_1

    .line 183
    :catch_0
    move-exception v3

    .line 177
    .end local v2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v0
    .end local v1
    :cond_1
    return-void
.end method

.method public removeObserver(Landroid/arch/lifecycle/LifecycleObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/arch/lifecycle/LifecycleObserver;

    .line 92
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->ensureMainThread()V

    .line 93
    invoke-super {p0, p1}, Landroid/arch/lifecycle/LifecycleRegistry;->removeObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 94
    instance-of v0, p1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    if-eqz v0, :cond_0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 98
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 100
    :cond_0
    :goto_0
    return-void
.end method

.method public setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 142
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 144
    .local v2, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    :try_start_0
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/SetPreferenceScreen;

    if-eqz v3, :cond_0

    .line 145
    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/core/lifecycle/events/SetPreferenceScreen;

    invoke-interface {v3, p1}, Lcom/android/settingslib/core/lifecycle/events/SetPreferenceScreen;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 148
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_1

    .line 147
    :catch_0
    move-exception v3

    .line 141
    .end local v2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .end local v0
    .end local v1
    :cond_1
    return-void
.end method
