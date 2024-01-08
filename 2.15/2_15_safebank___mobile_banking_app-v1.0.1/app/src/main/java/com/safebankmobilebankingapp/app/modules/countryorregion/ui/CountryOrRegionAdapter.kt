package com.safebankmobilebankingapp.app.modules.countryorregion.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.databinding.RowCountryorregionBinding
import com.safebankmobilebankingapp.app.modules.countryorregion.`data`.model.CountryorregionRowModel
import kotlin.Int
import kotlin.collections.List

class CountryOrRegionAdapter(
  var list: List<CountryorregionRowModel>
) : RecyclerView.Adapter<CountryOrRegionAdapter.RowCountryorregionVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowCountryorregionVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_countryorregion,parent,false)
    return RowCountryorregionVH(view)
  }

  override fun onBindViewHolder(holder: RowCountryorregionVH, position: Int) {
    val countryorregionRowModel = CountryorregionRowModel()
    // TODO uncomment following line after integration with data source
    // val countryorregionRowModel = list[position]
    holder.binding.countryorregionRowModel = countryorregionRowModel
  }

  override fun getItemCount(): Int = 7
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<CountryorregionRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: CountryorregionRowModel
    ) {
    }
  }

  inner class RowCountryorregionVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowCountryorregionBinding = RowCountryorregionBinding.bind(itemView)
    init {
      binding.linearCountrySelection.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, CountryorregionRowModel())
      }
    }
  }
}
