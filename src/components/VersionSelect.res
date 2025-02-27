@react.component
let make = (~onChange, ~version: string, ~availableVersions: array<(string, string)>) => {
  // array<(version, label)>

  let children = Belt.Array.map(availableVersions, ((ver, label)) => {
    <option className="py-4" key=ver value=ver> {React.string(label)} </option>
  })
  <select
    className="text-14 border border-fire text-fire inline-block rounded px-4 py-1  font-semibold "
    name="versionSelection"
    value=version
    onChange>
    {React.array(children)}
  </select>
}
