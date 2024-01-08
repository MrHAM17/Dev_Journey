package com.hiredjobsearch.app.modules.speciallization.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.databinding.RowSpeciallizationBinding
import com.hiredjobsearch.app.modules.speciallization.`data`.model.SpeciallizationRowModel
import kotlin.Int
import kotlin.collections.List

class SpeciallizationAdapter(
  var list: List<SpeciallizationRowModel>
) : RecyclerView.Adapter<SpeciallizationAdapter.RowSpeciallizationVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSpeciallizationVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_speciallization,parent,false)
    return RowSpeciallizationVH(view)
  }

  override fun onBindViewHolder(holder: RowSpeciallizationVH, position: Int) {
    val speciallizationRowModel = SpeciallizationRowModel()
    // TODO uncomment following line after integration with data source
    // val speciallizationRowModel = list[position]
    holder.binding.speciallizationRowModel = speciallizationRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SpeciallizationRowModel>) {
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
      item: SpeciallizationRowModel
    ) {
    }
  }

  inner class RowSpeciallizationVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSpeciallizationBinding = RowSpeciallizationBinding.bind(itemView)
  }
}
