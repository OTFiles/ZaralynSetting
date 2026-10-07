.class public final Lcom/google/common/base/Splitter;
.super Ljava/lang/Object;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Splitter$SplittingIterator;,
        Lcom/google/common/base/Splitter$Strategy;
    }
.end annotation


# instance fields
.field private final limit:I

.field private final omitEmptyStrings:Z

.field private final strategy:Lcom/google/common/base/Splitter$Strategy;

.field private final trimmer:Lcom/google/common/base/CharMatcher;


# direct methods
.method private constructor <init>(Lcom/google/common/base/Splitter$Strategy;)V
    .locals 3
    .param p1, "strategy"    # Lcom/google/common/base/Splitter$Strategy;

    .line 110
    sget-object v0, Lcom/google/common/base/CharMatcher;->NONE:Lcom/google/common/base/CharMatcher;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;ZLcom/google/common/base/CharMatcher;I)V

    .line 111
    return-void
.end method

.method private constructor <init>(Lcom/google/common/base/Splitter$Strategy;ZLcom/google/common/base/CharMatcher;I)V
    .locals 0
    .param p1, "strategy"    # Lcom/google/common/base/Splitter$Strategy;
    .param p2, "omitEmptyStrings"    # Z
    .param p3, "trimmer"    # Lcom/google/common/base/CharMatcher;
    .param p4, "limit"    # I

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/google/common/base/Splitter;->strategy:Lcom/google/common/base/Splitter$Strategy;

    .line 116
    iput-boolean p2, p0, Lcom/google/common/base/Splitter;->omitEmptyStrings:Z

    .line 117
    iput-object p3, p0, Lcom/google/common/base/Splitter;->trimmer:Lcom/google/common/base/CharMatcher;

    .line 118
    iput p4, p0, Lcom/google/common/base/Splitter;->limit:I

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/base/Splitter;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 103
    invoke-direct {p0, p1}, Lcom/google/common/base/Splitter;->splittingIterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/base/Splitter;)Lcom/google/common/base/CharMatcher;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/base/Splitter;

    .line 103
    iget-object v0, p0, Lcom/google/common/base/Splitter;->trimmer:Lcom/google/common/base/CharMatcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/base/Splitter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/common/base/Splitter;

    .line 103
    iget-boolean v0, p0, Lcom/google/common/base/Splitter;->omitEmptyStrings:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/common/base/Splitter;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/base/Splitter;

    .line 103
    iget v0, p0, Lcom/google/common/base/Splitter;->limit:I

    return v0
.end method

.method public static on(Ljava/lang/String;)Lcom/google/common/base/Splitter;
    .locals 2
    .param p0, "separator"    # Ljava/lang/String;

    .line 171
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The separator may not be the empty string."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 174
    new-instance v0, Lcom/google/common/base/Splitter;

    new-instance v1, Lcom/google/common/base/Splitter$2;

    invoke-direct {v1, p0}, Lcom/google/common/base/Splitter$2;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;)V

    return-object v0
.end method

.method private splittingIterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/google/common/base/Splitter;->strategy:Lcom/google/common/base/Splitter$Strategy;

    invoke-interface {v0, p0, p1}, Lcom/google/common/base/Splitter$Strategy;->iterator(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public omitEmptyStrings()Lcom/google/common/base/Splitter;
    .locals 5

    .line 316
    new-instance v0, Lcom/google/common/base/Splitter;

    iget-object v1, p0, Lcom/google/common/base/Splitter;->strategy:Lcom/google/common/base/Splitter$Strategy;

    iget-object v2, p0, Lcom/google/common/base/Splitter;->trimmer:Lcom/google/common/base/CharMatcher;

    iget v3, p0, Lcom/google/common/base/Splitter;->limit:I

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;ZLcom/google/common/base/CharMatcher;I)V

    return-object v0
.end method

.method public split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 386
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    new-instance v0, Lcom/google/common/base/Splitter$5;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Splitter$5;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-object v0
.end method
