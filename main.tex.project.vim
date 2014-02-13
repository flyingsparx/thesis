" ATP project vim script: Thu Feb 13, 2014 at 11:12 am +0000.

let b:atp_MainFile = 'main.tex'
let g:atp_mapNn = 0
let b:atp_autex = 1
let b:atp_TexCompiler = 'pdflatex'
let b:atp_TexOptions = '-synctex=1'
let b:atp_TexFlavor = 'tex'
let b:atp_auruns = '1'
let b:atp_ReloadOnError = '1'
let b:atp_OutDir = '/Users/willwebberley/Documents/PhD/Thesis'
let b:atp_OpenViewer = '1'
let b:atp_XpdfServer = 'main'
let b:atp_Viewer = 'open'
let b:TreeOfFiles = {'includes/acronyms.tex': [{}, 115], '2.Background/background.tex': [{}, 122], '1.Introduction/intro.tex': [{}, 121], '5.Chapter3/chapter3.tex': [{}, 125], '6.Conclusions/conclusions.tex': [{}, 126], '3.Chapter1/chapter1.tex': [{}, 123], 'includes/listofpublications.tex': [{}, 112], '4.Chapter2/chapter2.tex': [{}, 124], 'includes/glossary.tex': [{}, 116]}
let b:ListOfFiles = ['includes/style.tex', 'includes/listofpublications.tex', 'includes/acronyms.tex', 'includes/glossary.tex', '1.Introduction/intro.tex', '2.Background/background.tex', '3.Chapter1/chapter1.tex', '4.Chapter2/chapter2.tex', '5.Chapter3/chapter3.tex', '6.Conclusions/conclusions.tex', 'includes/library.bib']
let b:TypeDict = {'includes/acronyms.tex': 'input', '2.Background/background.tex': 'input', 'includes/style.tex': 'preambule', '1.Introduction/intro.tex': 'input', '4.Chapter2/chapter2.tex': 'input', '5.Chapter3/chapter3.tex': 'input', 'includes/library.bib': 'bib', '3.Chapter1/chapter1.tex': 'input', 'includes/listofpublications.tex': 'input', '6.Conclusions/conclusions.tex': 'input', 'includes/glossary.tex': 'input'}
let b:LevelDict = {'includes/acronyms.tex': 1, '2.Background/background.tex': 1, 'includes/style.tex': 1, '1.Introduction/intro.tex': 1, '4.Chapter2/chapter2.tex': 1, '5.Chapter3/chapter3.tex': 1, 'includes/library.bib': 1, '3.Chapter1/chapter1.tex': 1, 'includes/listofpublications.tex': 1, '6.Conclusions/conclusions.tex': 1, 'includes/glossary.tex': 1}
let b:atp_BibCompiler = 'bibtex'
let b:atp_StarEnvDefault = ''
let b:atp_StarMathEnvDefault = ''
let b:atp_updatetime_insert = 4000
let b:atp_updatetime_normal = 2000
let b:atp_LocalCommands = ['\baselinestretch', '\baselinestretch', '\@makechapterhead', '\@chapter[', '\@schapter', '\@makeschapterhead', '\contentsname', '\N', '\Z', '\Q', '\R', '\C', '\E', '\Cf', '\Pf', '\url@leostyle', '\rg{', '\rt{', '\rc{', '\ec{', '\ecg{', '\ecu{', '\foc{', '\frc{', '\aut{', '\fos{', '\frs{', '\raa{', '\dia{', '\score{', '\gscore{', '\uscore{', '\ascore{', '\disparity{', '\gdisparity{', '\udisparity{', '\sdisparity{']
let b:atp_LocalEnvironments = []
let b:atp_LocalColors = []
